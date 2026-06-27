import 'dart:async';

import 'package:flutter/material.dart' hide Banner;
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/home_sizes.dart';
import '../../../core/constants/screen_size.dart';
import '../../../core/utils/extensions/num_extension.dart';
import '../../../core/widgets/horizontal_scroll/horizontal_scroll_edge_hover_zone.dart';
import '../../../core/widgets/images/app_image.dart';
import '../../../core/widgets/reveal/reveal_wrap.dart';
import '../../../domain/models/banner/banner.dart';
import '../providers/banners/home_banner_providers.dart';

/// Секция баннеров на главной: карусель или один баннер.
class HomeBannerSection extends ConsumerWidget {
  const HomeBannerSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncBanners = ref.watch(homeBannersProvider);
    return asyncBanners.when(
      data: (banners) {
        if (banners.isEmpty) return const SizedBox.shrink();
        if (banners.length == 1) {
          return _BannerTile(banner: banners.first);
        }
        return _BannerCarousel(banners: banners);
      },
      loading: () => const _BannerSkeleton(),
      error: (_, __) => const SizedBox.shrink(),
    );
  }
}

/// Оболочка баннера: 16×9 на всю ширину, без скруглений и тени.
class _BannerChrome extends StatelessWidget {
  const _BannerChrome({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final height = width / HomeSizes.homePromoAspectRatio;

        return SizedBox(
          width: width,
          height: height,
          child: Stack(
            fit: StackFit.expand,
            children: [
              child,
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 1,
                  color: AppColors.white.withValues(alpha: 0.24),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 1,
                  color: AppColors.neutralBlack.withValues(alpha: 0.32),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

/// Один баннер на всю ширину.
class _BannerTile extends StatelessWidget {
  const _BannerTile({required this.banner});

  final Banner banner;

  @override
  Widget build(BuildContext context) =>
      _BannerChrome(child: _BannerPageContent(banner: banner));
}

Widget _buildBannerTitle(BuildContext context, Banner banner) {
  final s = context.screenSize;
  return Align(
    alignment: Alignment.topLeft,
    child: Padding(
      padding: EdgeInsets.all(s.bannerPadding),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.sizeOf(context).width * 0.7,
        ),
        child: RevealWrap(
          key: ValueKey('banner-title-${banner.id}'),
          variant: RevealEntranceVariant.fadeSlideFromTop,
          resetWhenLeavingViewport: true,
          child: Text(
            banner.title,
            style: _bannerTitleStyle(context),
          ),
        ),
      ),
    ),
  );
}

const _bannerTitleShadows = [
  Shadow(color: Color(0x99000000), blurRadius: 10, offset: Offset(0, 2)),
  Shadow(color: Color(0x66000000), blurRadius: 4, offset: Offset(0, 1)),
];

TextStyle _bannerTitleStyle(BuildContext context) {
  final s = context.screenSize;
  return Theme.of(context).textTheme.headlineMedium?.copyWith(
        color: AppColors.white,
        fontWeight: FontWeight.w600,
        fontSize: s.headlineMediumSize * 1.5,
        shadows: _bannerTitleShadows,
      ) ??
      TextStyle(
        color: AppColors.white,
        fontWeight: FontWeight.w600,
        fontSize: s.headlineMediumSize * 1.5,
        shadows: _bannerTitleShadows,
      );
}

Widget _buildBannerForeground(BuildContext context, Banner banner) =>
    LayoutBuilder(
      builder: (context, constraints) => AppImage(
        url: banner.imageUrl,
        width: constraints.maxWidth,
        height: constraints.maxHeight,
        fit: BoxFit.cover,
        borderRadius: 0,
        child: _buildBannerTitle(context, banner),
      ),
    );

/// Карусель баннеров: PageView, автоскролл, свайп, hover-стрелки по краям.
class _BannerCarousel extends StatefulWidget {
  const _BannerCarousel({required this.banners});

  final List<Banner> banners;

  @override
  State<_BannerCarousel> createState() => _BannerCarouselState();
}

class _BannerCarouselState extends State<_BannerCarousel> {
  static const _autoScrollDuration = Duration(seconds: 10);
  static const _pageAnimationDuration = Duration(milliseconds: 1200);
  static const _pageAnimationCurve = Curves.easeInOut;

  late final PageController _pageController;
  Timer? _timer;
  int _currentPage = 0;
  bool _hoverLeft = false;
  bool _hoverRight = false;

  int get _count => widget.banners.length;

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
    final s = context.screenSize;
    return _BannerChrome(
      child: Stack(
        fit: StackFit.expand,
        children: [
          PageView.builder(
            controller: _pageController,
            physics: const PageScrollPhysics(),
            itemBuilder: (context, index) {
              final banner = widget.banners[index % _count];
              return _BannerPageContent(banner: banner);
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
      ),
    );
  }
}

/// Контент одной страницы карусели.
class _BannerPageContent extends StatelessWidget {
  const _BannerPageContent({required this.banner});

  final Banner banner;

  @override
  Widget build(BuildContext context) => _buildBannerForeground(context, banner);
}

class _BannerSkeleton extends StatelessWidget {
  const _BannerSkeleton();

  @override
  Widget build(BuildContext context) =>
      _BannerChrome(child: ColoredBox(color: AppColors.background));
}
