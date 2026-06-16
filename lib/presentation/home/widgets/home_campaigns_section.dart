import 'dart:async' show Timer, unawaited;
import 'dart:math' show min;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/home_sizes.dart';
import '../../../core/constants/screen_size.dart';
import '../../../core/utils/extensions/num_extension.dart';
import '../../../core/widgets/horizontal_scroll/horizontal_scroll_edge_hover_zone.dart';
import '../../../core/widgets/reveal/reveal_wrap.dart';
import '../../../domain/models/campaign/campaign.dart';
import '../providers/home_di.dart';
import 'home_campaign_card.dart';
import 'home_section_backdrop.dart';

/// Секция «Акции»: заголовок и карусель 16×9 (как баннеры).
class HomeCampaignsSection extends ConsumerWidget {
  const HomeCampaignsSection({super.key});

  static const String _title = 'Акции';

  static double _campaignCardWidth(
    double viewportWidth,
    ScreenSize screenSize,
  ) =>
      min(
        HomeSizes.homeCampaignCardMaxWidth,
        viewportWidth - 2 * screenSize.horizontalPadding,
      );

  static List<Campaign> _visibleCampaigns(List<Campaign> campaigns) =>
      campaigns
          .where((c) => (c.bannerImageUrl ?? '').trim().isNotEmpty)
          .toList()
        ..sort((a, b) => b.priority.compareTo(a.priority));

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final campaignsAsync = ref.watch(HomeDi.homeCampaignsProvider);
    final screenSize = context.screenSize;
    final viewportWidth = MediaQuery.sizeOf(context).width;
    final cardWidth = _campaignCardWidth(viewportWidth, screenSize);
    final listHeight = HomeCampaignCard.cardHeightForWidth(cardWidth);
    const backdropStyle = HomeSectionBackdropStyle.glassLight;
    final glassVerticalEdge = screenSize.sectionGlassBlockVerticalMargin;

    return campaignsAsync.when(
      data: (campaigns) {
        final items = _visibleCampaigns(campaigns);
        if (items.isEmpty) return const SizedBox.shrink();

        final carousel = items.length == 1
            ? _CampaignPage(
                campaign: items.first,
                screenSize: screenSize,
                cardWidth: cardWidth,
                revealIndex: 0,
              )
            : _CampaignCarousel(
                campaigns: items,
                screenSize: screenSize,
                cardWidth: cardWidth,
              );

        final content = Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: glassVerticalEdge),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenSize.horizontalPadding,
              ),
              child: RevealWrap(
                key: const ValueKey('campaigns-title'),
                variant: RevealEntranceVariant.fadeSlideFromTop,
                resetWhenLeavingViewport: true,
                child: Text(
                  _title,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: AppColors.graphite,
                        fontWeight: FontWeight.w600,
                        fontSize: screenSize.headlineMediumSize,
                      ),
                ),
              ),
            ),
            SizedBox(height: screenSize.sectionTitleBottomSpacing),
            SizedBox(height: listHeight, child: carousel),
            SizedBox(height: glassVerticalEdge),
          ],
        );

        return HomeSectionBackdrop(style: backdropStyle, child: content);
      },
      loading: () => _CampaignsLoadingPlaceholder(
        screenSize: screenSize,
        cardWidth: cardWidth,
      ),
      error: (_, __) => const SizedBox.shrink(),
    );
  }

  static bool _hasTapTarget(Campaign c) {
    final u = (c.landingUrl ?? '').trim();
    return u.isNotEmpty;
  }

  static Future<void> _onCampaignTap(
    BuildContext context,
    Campaign campaign,
  ) async {
    final raw = (campaign.landingUrl ?? '').trim();
    if (raw.isEmpty) return;
    final uri = Uri.tryParse(raw);
    if (uri == null) return;
    final ok = await launchUrl(uri, mode: LaunchMode.externalApplication);
    if (!ok && context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Не удалось открыть ссылку')),
      );
    }
  }
}

class _CampaignPage extends StatelessWidget {
  const _CampaignPage({
    required this.campaign,
    required this.screenSize,
    required this.cardWidth,
    required this.revealIndex,
  });

  final Campaign campaign;
  final ScreenSize screenSize;
  final double cardWidth;
  final int revealIndex;

  @override
  Widget build(BuildContext context) => Center(
        child: SizedBox(
          width: cardWidth,
          child: HomeCampaignCard(
            campaign: campaign,
            screenSize: screenSize,
            cardWidth: cardWidth,
            revealIndex: revealIndex,
            onTap: HomeCampaignsSection._hasTapTarget(campaign)
                ? () => unawaited(
                      HomeCampaignsSection._onCampaignTap(context, campaign),
                    )
                : null,
          ),
        ),
      );
}

/// Карусель акций: PageView, автоскролл, свайп, hover-стрелки — как у баннеров.
class _CampaignCarousel extends StatefulWidget {
  const _CampaignCarousel({
    required this.campaigns,
    required this.screenSize,
    required this.cardWidth,
  });

  final List<Campaign> campaigns;
  final ScreenSize screenSize;
  final double cardWidth;

  @override
  State<_CampaignCarousel> createState() => _CampaignCarouselState();
}

class _CampaignCarouselState extends State<_CampaignCarousel> {
  static const _autoScrollDuration = Duration(seconds: 10);
  static const _pageAnimationDuration = Duration(milliseconds: 1200);
  static const _pageAnimationCurve = Curves.easeInOut;

  late final PageController _pageController;
  Timer? _timer;
  int _currentPage = 0;
  bool _hoverLeft = false;
  bool _hoverRight = false;

  int get _count => widget.campaigns.length;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _count * 100);
    _pageController.addListener(_onPageChanged);
    _startAutoScroll();
  }

  void _onPageChanged() {
    if ((_pageController.page ?? 0).isInteger() && mounted) {
      final page = (_pageController.page ?? 0).toInt();
      final index = page % _count;
      if (index != _currentPage) {
        setState(() {
          _currentPage = index;
          _startAutoScroll();
        });
      }
    }
  }

  void _goPrevious() {
    if (!mounted || _count <= 1) return;
    final current = _pageController.page?.round() ?? _count * 100;
    unawaited(
      _pageController.animateToPage(
        current - 1,
        duration: _pageAnimationDuration,
        curve: _pageAnimationCurve,
      ),
    );
    _startAutoScroll();
  }

  void _goNext() {
    if (!mounted || _count <= 1) return;
    final current = _pageController.page?.round() ?? _count * 100;
    unawaited(
      _pageController.animateToPage(
        current + 1,
        duration: _pageAnimationDuration,
        curve: _pageAnimationCurve,
      ),
    );
    _startAutoScroll();
  }

  void _startAutoScroll() {
    _timer?.cancel();
    _timer = Timer.periodic(_autoScrollDuration, (_) {
      if (!mounted || _count <= 1) return;
      final currentPage = _pageController.page?.round() ?? _count * 100;
      unawaited(
        _pageController.animateToPage(
          currentPage + 1,
          duration: _pageAnimationDuration,
          curve: _pageAnimationCurve,
        ),
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.removeListener(_onPageChanged);
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final s = widget.screenSize;

    return Stack(
      fit: StackFit.expand,
      children: [
        PageView.builder(
          controller: _pageController,
          physics: const PageScrollPhysics(),
          itemBuilder: (context, index) {
            final campaign = widget.campaigns[index % _count];
            return _CampaignPage(
              campaign: campaign,
              screenSize: s,
              cardWidth: widget.cardWidth,
              revealIndex: index % _count,
            );
          },
        ),
        Positioned.fill(
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: HorizontalScrollEdgeHoverZone(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: s.bannerPadding),
                  hovered: _hoverLeft,
                  onHoverChanged: (v) => setState(() => _hoverLeft = v),
                  slideEnd: const Offset(-0.28, 0),
                  onZoneTap: _goPrevious,
                  icon: Icons.chevron_left_rounded,
                  iconSize: s.bannerNavArrowSize,
                  iconColor: AppColors.white,
                ),
              ),
              const Expanded(
                flex: 3,
                child: IgnorePointer(child: SizedBox.expand()),
              ),
              Expanded(
                flex: 1,
                child: HorizontalScrollEdgeHoverZone(
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.only(right: s.bannerPadding),
                  hovered: _hoverRight,
                  onHoverChanged: (v) => setState(() => _hoverRight = v),
                  slideEnd: const Offset(0.28, 0),
                  onZoneTap: _goNext,
                  icon: Icons.chevron_right_rounded,
                  iconSize: s.bannerNavArrowSize,
                  iconColor: AppColors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _CampaignsLoadingPlaceholder extends StatelessWidget {
  const _CampaignsLoadingPlaceholder({
    required this.screenSize,
    required this.cardWidth,
  });

  final ScreenSize screenSize;
  final double cardWidth;

  @override
  Widget build(BuildContext context) {
    final listHeight = HomeCampaignCard.cardHeightForWidth(cardWidth);
    final edge = screenSize.sectionGlassBlockVerticalMargin;

    return HomeSectionBackdrop(
      style: HomeSectionBackdropStyle.glassLight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: edge),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenSize.horizontalPadding,
            ),
            child: Container(
              height: screenSize.headlineMediumSize,
              decoration: BoxDecoration(
                color: AppColors.surfaceElevated,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          SizedBox(height: screenSize.sectionTitleBottomSpacing),
          SizedBox(
            height: listHeight,
            child: ColoredBox(color: AppColors.surfaceElevated),
          ),
          SizedBox(height: edge),
        ],
      ),
    );
  }
}
