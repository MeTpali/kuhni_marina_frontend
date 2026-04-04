import 'dart:async';
import 'dart:ui';

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
/// Баннеры на всю ширину без скруглений, точки индикатора снизу, автоскролл каждые 10 с.
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

/// Один баннер на всю ширину без скруглений.
class _BannerTile extends StatelessWidget {
  const _BannerTile({required this.banner});

  final Banner banner;

  @override
  Widget build(BuildContext context) {
    final s = context.screenSize;
    return SizedBox(
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
    );
  }
}

/// Бесконечная карусель баннеров: PageView на всю ширину, точки поверх снизу с блюром, автоскролл каждые 10 с.
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

  void _goToPage(int bannerIndex) {
    if (!mounted || _count <= 1) return;
    final currentPage = _pageController.page?.round() ?? _count * 100;
    final targetPage = (currentPage ~/ _count) * _count + bannerIndex;
    unawaited(
      _pageController.animateToPage(
        targetPage,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      ),
    );
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
    return SizedBox(
      height: s.bannerHeight,
      child: Stack(
        fit: StackFit.expand,
        children: [
          PageView.builder(
            controller: _pageController,
            itemBuilder: (context, index) {
              final banner = widget.banners[index % _count];
              return _BannerTile(banner: banner);
            },
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: _BannerDotsRow(
              count: _count,
              currentIndex: _currentPage,
              screenSize: s,
              onDotTap: _goToPage,
            ),
          ),
        ],
      ),
    );
  }
}

/// Ряд кликабельных точек поверх баннера снизу; у каждой точки — свой блюр фона.
class _BannerDotsRow extends StatelessWidget {
  const _BannerDotsRow({
    required this.count,
    required this.currentIndex,
    required this.screenSize,
    required this.onDotTap,
  });

  final int count;
  final int currentIndex;
  final ScreenSize screenSize;
  final void Function(int index) onDotTap;

  @override
  Widget build(BuildContext context) {
    final s = screenSize;
    return Padding(
      padding: EdgeInsets.only(
        bottom: s.bannerDotsBottomPadding,
        left: s.bannerDotsHorizontalPadding,
        right: s.bannerDotsHorizontalPadding,
      ),
      child: Wrap(
        spacing: s.bannerDotSpacing,
        runSpacing: s.bannerDotSpacing,
        alignment: WrapAlignment.center,
        children: List.generate(
          count,
          (index) => _BannerDot(
            size: s.bannerDotSize,
            isActive: index == currentIndex,
            onTap: () => onDotTap(index),
          ),
        ),
      ),
    );
  }
}

/// Точка индикатора с блюром своего фона; кликабельна.
class _BannerDot extends StatelessWidget {
  const _BannerDot({
    required this.size,
    required this.isActive,
    required this.onTap,
  });

  final double size;
  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: onTap,
    behavior: HitTestBehavior.opaque,
    child: ClipOval(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
        child: Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isActive
                ? AppColors.white.withValues(alpha: 0.9)
                : AppColors.white.withValues(alpha: 0.25),
          ),
        ),
      ),
    ),
  );
}

/// Плейсхолдер баннера на всю ширину без скруглений.
class _PlaceholderBanner extends StatelessWidget {
  const _PlaceholderBanner({required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    final s = context.screenSize;
    return Container(
      width: double.infinity,
      height: s.bannerHeight,
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
    );
  }
}

/// Скелетон баннера на всю ширину без скруглений.
class _BannerSkeleton extends StatelessWidget {
  const _BannerSkeleton();

  @override
  Widget build(BuildContext context) {
    final s = context.screenSize;
    return Container(
      width: double.infinity,
      height: s.bannerHeight,
      color: AppColors.background,
    );
  }
}
