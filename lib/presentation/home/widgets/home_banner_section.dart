import 'dart:async';

import 'package:flutter/material.dart' hide Banner;
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/home_sizes.dart';
import '../../../core/constants/screen_size.dart';
import '../../../core/utils/extensions/num_extension.dart';
import '../../../core/widgets/images/app_image.dart';
import '../../../domain/models/banner/banner.dart';
import '../providers/home_di.dart';

/// Секция баннеров на главной: карусель или один баннер.
/// Нижние углы скруглены, тень снизу; свайп и автоскролл; на десктопе стрелки
/// в левой/правой трети при наведении.
class HomeBannerSection extends ConsumerWidget {
  const HomeBannerSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncBanners = ref.watch(HomeDi.homeBannersProvider);
    return asyncBanners.when(
      data: (banners) {
        if (banners.isEmpty) {
          return const _PlaceholderBanner(
            title: 'Кухни элитного класса',
            subtitle: 'Индивидуальный подход и премиальные материалы',
          );
        }
        if (banners.length == 1) {
          return _BannerTile(banner: banners.first);
        }
        return _BannerCarousel(banners: banners);
      },
      loading: () => const _BannerSkeleton(),
      error: (_, __) => const _PlaceholderBanner(
        title: 'Кухни элитного класса',
        subtitle: 'Индивидуальный подход и премиальные материалы',
      ),
    );
  }
}

/// Оболочка: скругление снизу и тень только вниз.
///
/// [Material.elevation] с [BorderRadius.vertical] (только низ) даёт на некоторых
/// платформах тень «вверх»; здесь явный [BoxShadow] с положительным [Offset.dy].
class _BannerChrome extends StatelessWidget {
  const _BannerChrome({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final s = context.screenSize;
    final r = s.bannerBottomRadius;
    final elev = s.bannerElevation;
    final radius = BorderRadius.vertical(bottom: Radius.circular(r));
    return Container(
      decoration: BoxDecoration(
        borderRadius: radius,
        boxShadow: [
          BoxShadow(
            color: AppColors.neutralBlack.withValues(alpha: 0.36),
            offset: Offset(0, elev * 1.1),
            blurRadius: elev * 2.7,
            spreadRadius: 0,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: radius,
        clipBehavior: Clip.antiAlias,
        child: child,
      ),
    );
  }
}

/// Один баннер на всю ширину.
class _BannerTile extends StatelessWidget {
  const _BannerTile({required this.banner});

  final Banner banner;

  @override
  Widget build(BuildContext context) {
    final s = context.screenSize;
    return _BannerChrome(
      child: SizedBox(
        width: double.infinity,
        height: s.bannerHeight,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned.fill(
              child: AppImage(
                width: double.infinity,
                url: banner.imageUrl,
                fit: BoxFit.cover,
                borderRadius: 0,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    AppColors.neutralBlack.withValues(alpha: 0.5),
                    AppColors.neutralBlack.withValues(alpha: 0.0),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.all(s.bannerPadding),
                child: Text(
                  banner.title,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: AppColors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: s.headlineMediumSize,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Карусель баннеров: PageView, автоскролл, свайп, hover-стрелки по бокам.
class _BannerCarousel extends StatefulWidget {
  const _BannerCarousel({required this.banners});

  final List<Banner> banners;

  @override
  State<_BannerCarousel> createState() => _BannerCarouselState();
}

class _BannerCarouselState extends State<_BannerCarousel> {
  static const _autoScrollDuration = Duration(seconds: 10);

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
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
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
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
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
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInOut,
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
      child: SizedBox(
        height: s.bannerHeight,
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
                    child: _BannerNavSideZone(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: s.bannerPadding),
                      hovered: _hoverLeft,
                      onHoverChanged: (v) => setState(() => _hoverLeft = v),
                      slideEnd: const Offset(-0.28, 0),
                      onZoneTap: _goPrevious,
                      icon: Icons.chevron_left_rounded,
                      iconSize: s.bannerNavArrowSize,
                    ),
                  ),
                  const Expanded(
                    child: IgnorePointer(child: SizedBox.expand()),
                  ),
                  Expanded(
                    child: _BannerNavSideZone(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.only(right: s.bannerPadding),
                      hovered: _hoverRight,
                      onHoverChanged: (v) => setState(() => _hoverRight = v),
                      slideEnd: const Offset(0.28, 0),
                      onZoneTap: _goNext,
                      icon: Icons.chevron_right_rounded,
                      iconSize: s.bannerNavArrowSize,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Левая или правая треть: наведение и тап на всю область; стрелка только визуально
/// (не участвует в hit-test — иначе курсор «выпрыгивает» из [MouseRegion] и ловится мерцание).
class _BannerNavSideZone extends StatelessWidget {
  const _BannerNavSideZone({
    required this.alignment,
    required this.padding,
    required this.hovered,
    required this.onHoverChanged,
    required this.slideEnd,
    required this.onZoneTap,
    required this.icon,
    required this.iconSize,
  });

  final Alignment alignment;
  final EdgeInsets padding;
  final bool hovered;
  final ValueChanged<bool> onHoverChanged;
  final Offset slideEnd;
  final VoidCallback onZoneTap;
  final IconData icon;
  final double iconSize;

  @override
  Widget build(BuildContext context) => Stack(
    fit: StackFit.expand,
    children: [
      MouseRegion(
        cursor: SystemMouseCursors.click,
        hitTestBehavior: HitTestBehavior.translucent,
        onEnter: (_) => onHoverChanged(true),
        onExit: (_) => onHoverChanged(false),
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: onZoneTap,
          child: const SizedBox.expand(),
        ),
      ),
      Align(
        alignment: alignment,
        child: Padding(
          padding: padding,
          child: IgnorePointer(
            child: AnimatedOpacity(
              opacity: hovered ? 1 : 0,
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeOut,
              child: AnimatedSlide(
                duration: const Duration(milliseconds: 240),
                curve: Curves.easeOutCubic,
                offset: hovered ? Offset.zero : slideEnd,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.white.withValues(alpha: 0.22),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 8,
                        spreadRadius: 0,
                        offset: Offset(0, 2),
                        color: Color(0x40000000),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Icon(
                      icon,
                      color: AppColors.white,
                      size: iconSize,
                      shadows: const [
                        Shadow(blurRadius: 6, color: Color(0x66000000)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}

/// Контент одной страницы карусели (без второй оболочки [Material]).
class _BannerPageContent extends StatelessWidget {
  const _BannerPageContent({required this.banner});

  final Banner banner;

  @override
  Widget build(BuildContext context) {
    final s = context.screenSize;
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned.fill(
          child: AppImage(
            width: double.infinity,
            url: banner.imageUrl,
            fit: BoxFit.cover,
            borderRadius: 0,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                AppColors.neutralBlack.withValues(alpha: 0.5),
                AppColors.neutralBlack.withValues(alpha: 0.0),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.all(s.bannerPadding),
            child: Text(
              banner.title,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: AppColors.white,
                fontWeight: FontWeight.w600,
                fontSize: s.headlineMediumSize,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _PlaceholderBanner extends StatelessWidget {
  const _PlaceholderBanner({required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    final s = context.screenSize;
    return _BannerChrome(
      child: SizedBox(
        width: double.infinity,
        height: s.bannerHeight,
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [AppColors.primary, AppColors.primaryVariant],
            ),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(s.bannerPadding),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: AppColors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: s.headlineMediumSize,
                    ),
                  ),
                  SizedBox(height: s.sectionTitleBottomSpacing * 0.75),
                  Text(
                    subtitle,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: AppColors.white.withValues(alpha: 0.9),
                      fontSize: s.bodyLargeSize,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _BannerSkeleton extends StatelessWidget {
  const _BannerSkeleton();

  @override
  Widget build(BuildContext context) {
    final s = context.screenSize;
    return _BannerChrome(
      child: SizedBox(
        width: double.infinity,
        height: s.bannerHeight,
        child: ColoredBox(color: AppColors.background),
      ),
    );
  }
}
