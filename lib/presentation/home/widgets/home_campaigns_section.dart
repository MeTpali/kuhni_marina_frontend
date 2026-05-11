import 'dart:async' show unawaited;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/home_sizes.dart';
import '../../../core/constants/product_card_sizes.dart';
import '../../../core/constants/screen_size.dart';
import '../../../core/widgets/horizontal_scroll/horizontal_loop_carousel.dart';
import '../../../core/widgets/reveal/reveal_wrap.dart';
import '../../../domain/models/campaign/campaign.dart';
import '../providers/home_di.dart';
import 'home_campaign_card.dart';
import 'home_section_backdrop.dart';

/// Секция «Акции»: заголовок и горизонтальная зацикленная лента с автоскроллом и стрелками.
class HomeCampaignsSection extends ConsumerWidget {
  const HomeCampaignsSection({super.key});

  static const String _title = 'Акции';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final campaignsAsync = ref.watch(HomeDi.homeCampaignsProvider);
    final screenSize = context.screenSize;
    final cardWidth = screenSize.productCardDefaultWidth * 2.5;
    final listHeight = HomeCampaignCard.cardHeightForWidth(cardWidth);
    final gap = screenSize.horizontalPadding;
    const backdropStyle = HomeSectionBackdropStyle.glassLight;
    final glassVerticalEdge = screenSize.sectionGlassBlockVerticalMargin;

    return campaignsAsync.when(
      data: (campaigns) {
        final items =
            campaigns
                .where((c) => (c.bannerImageUrl ?? '').trim().isNotEmpty)
                .toList()
              ..sort((a, b) => b.priority.compareTo(a.priority));

        if (items.isEmpty) return const SizedBox.shrink();

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
            SizedBox(
              height: listHeight,
              child: HorizontalLoopCarousel<Campaign>(
                items: items,
                itemKey: (c) => c.id,
                itemWidth: cardWidth,
                gap: gap,
                height: listHeight,
                screenSize: screenSize,
                itemBuilder: (context, campaign, index) => RevealWrap(
                  key: ValueKey('campaign-card-${campaign.id}-$index'),
                  variant: RevealEntranceVariant.fade,
                  resetWhenLeavingViewport: true,
                  child: SizedBox(
                    width: cardWidth,
                    child: HomeCampaignCard(
                      campaign: campaign,
                      screenSize: screenSize,
                      cardWidth: cardWidth,
                      onTap: _hasTapTarget(campaign)
                          ? () => unawaited(_onCampaignTap(context, campaign))
                          : null,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: glassVerticalEdge),
          ],
        );

        return HomeSectionBackdrop(style: backdropStyle, child: content);
      },
      loading: () => _CampaignsLoadingPlaceholder(screenSize: screenSize),
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

class _CampaignsLoadingPlaceholder extends StatelessWidget {
  const _CampaignsLoadingPlaceholder({required this.screenSize});

  final ScreenSize screenSize;

  @override
  Widget build(BuildContext context) {
    final cardWidth = screenSize.productCardDefaultWidth * 2;
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
