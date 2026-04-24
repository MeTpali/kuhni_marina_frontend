import 'dart:async';
import 'dart:ui' show lerpDouble;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_player/video_player.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_images.dart';
import '../../../core/constants/home_sizes.dart';
import '../../../core/constants/screen_size.dart';
import '../../../core/theme/app_theme.dart';
import '../widgets/home_app_bar.dart';
import '../widgets/home_banner_section.dart';
import '../widgets/home_campaigns_section.dart';
import '../widgets/home_footer.dart';
import '../widgets/home_furniture_section.dart';
import '../widgets/home_kitchens_section.dart';
import '../widgets/home_search_bar.dart';

/// Видео-фон главной (Marya promo).
const _kHomeBackdropVideoUrl = 'https://www.marya.ru/promo/home3/img/7.mp4';

@RoutePage()
class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage>
    with SingleTickerProviderStateMixin {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _scrollController = ScrollController();
  final _searchSectionKey = GlobalKey();
  final _furnitureSectionKey = GlobalKey();

  int _selectedNavIndex = 0;

  late final AnimationController _appBarHideController;
  late final Animation<double> _appBarHideCurve;
  double _lastScrollPixels = 0;

  VideoPlayerController? _homeBackdropVideo;

  @override
  void initState() {
    super.initState();
    unawaited(_initHomeBackdropVideo());
    _appBarHideController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 280),
    );
    _appBarHideCurve = CurvedAnimation(
      parent: _appBarHideController,
      curve: Curves.easeOutCubic,
    );
    _scrollController.addListener(_handleScrollForAppBar);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_handleScrollForAppBar);
    _appBarHideController.dispose();
    _scrollController.dispose();
    _homeBackdropVideo?.dispose();
    super.dispose();
  }

  Future<void> _initHomeBackdropVideo() async {
    final controller = VideoPlayerController.networkUrl(
      Uri.parse(_kHomeBackdropVideoUrl),
    );
    try {
      await controller.initialize();
      if (!mounted) {
        await controller.dispose();
        return;
      }
      await controller.setLooping(true);
      await controller.setVolume(0);
      if (!mounted) {
        await controller.dispose();
        return;
      }
      await controller.play();
      if (!mounted) {
        await controller.dispose();
        return;
      }
      setState(() => _homeBackdropVideo = controller);
    } catch (_) {
      await controller.dispose();
    }
  }

  void _handleScrollForAppBar() {
    if (!_scrollController.hasClients) return;
    final offset = _scrollController.offset;
    final delta = offset - _lastScrollPixels;

    if (offset <= 0) {
      if (_appBarHideController.value > 0) {
        _appBarHideController.reverse();
      }
      _lastScrollPixels = offset;
      return;
    }

    const scrollThreshold = 10.0;
    if (delta.abs() < scrollThreshold) {
      _lastScrollPixels = offset;
      return;
    }

    if (delta > 0) {
      if (_appBarHideController.value < 1) {
        _appBarHideController.forward();
      }
    } else {
      if (_appBarHideController.value > 0) {
        _appBarHideController.reverse();
      }
    }
    _lastScrollPixels = offset;
  }

  void _scrollToSearch() {
    final ctx = _searchSectionKey.currentContext;
    if (ctx != null) {
      unawaited(
        Scrollable.ensureVisible(
          ctx,
          duration: const Duration(milliseconds: 450),
          curve: Curves.easeOutCubic,
          alignment: 0.12,
        ),
      );
    }
  }

  void _scrollToTop() {
    if (!_scrollController.hasClients) return;
    unawaited(
      _scrollController.animateTo(
        0,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeOutCubic,
      ),
    );
  }

  void _scrollToFurniture() {
    final ctx = _furnitureSectionKey.currentContext;
    if (ctx != null) {
      unawaited(
        Scrollable.ensureVisible(
          ctx,
          duration: const Duration(milliseconds: 450),
          curve: Curves.easeOutCubic,
          alignment: 0.08,
        ),
      );
    }
  }

  void _onNavSelect(int index) {
    setState(() => _selectedNavIndex = index);
    if (index == 0) {
      _scrollToTop();
    } else if (index == 2) {
      _scrollToFurniture();
    }
  }

  void _onFavoritesTap() {}

  @override
  Widget build(BuildContext context) {
    final screenSize = context.screenSize;
    final statusTop = MediaQuery.paddingOf(context).top;
    final appBarHeight = statusTop + screenSize.homeAppBarHeight;
    final backdropVideo = _homeBackdropVideo;

    final bodySliver = SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const HomeBannerSection(),
          SizedBox(height: screenSize.sectionSpacing),
          KeyedSubtree(key: _searchSectionKey, child: const HomeSearchBar()),
          SizedBox(height: screenSize.sectionSpacing),
          const HomeKitchensSection(),
          KeyedSubtree(
            key: _furnitureSectionKey,
            child: const HomeFurnitureSection(),
          ),
          const HomeCampaignsSection(),
          SizedBox(height: screenSize.sectionSpacing),
          const HomeFooter(),
          SizedBox(height: screenSize.sectionSpacing),
          const _ThemeToggle(),
          SizedBox(height: screenSize.sectionSpacing),
        ],
      ),
    );

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: AppColors.homePageBackground,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(appBarHeight),
        child: SlideTransition(
          position: Tween<Offset>(
            begin: Offset.zero,
            end: const Offset(0, -1),
          ).animate(_appBarHideCurve),
          child: HomeAppBar(
            toolbarInnerHeight: screenSize.homeAppBarHeight,
            selectedNavIndex: _selectedNavIndex,
            onSearchTap: _scrollToSearch,
            onFavoritesTap: _onFavoritesTap,
            onOpenDrawer: screenSize.isExpanded
                ? null
                : () => _scaffoldKey.currentState?.openDrawer(),
            onNavItemTap: _onNavSelect,
          ),
        ),
      ),
      drawer: screenSize.isExpanded
          ? null
          : Drawer(
              child: _HomeDrawerContent(
                selectedIndex: _selectedNavIndex,
                onSelect: (index) {
                  Navigator.of(context).pop();
                  _onNavSelect(index);
                },
              ),
            ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          const ColoredBox(color: AppColors.homePageBackground),
          if (backdropVideo != null) // && backdropVideo.value.isInitialized
            Positioned.fill(
              child: ClipRect(
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: SizedBox(
                    width: backdropVideo.value.size.width,
                    height: backdropVideo.value.size.height,
                    child: VideoPlayer(backdropVideo),
                  ),
                ),
              ),
            ),
          AnimatedBuilder(
            animation: _appBarHideCurve,
            builder: (context, _) {
              final top =
                  lerpDouble(appBarHeight, statusTop, _appBarHideCurve.value) ??
                  appBarHeight;
              return CustomScrollView(
                controller: _scrollController,
                slivers: [
                  SliverPadding(
                    padding: EdgeInsets.only(top: top),
                    sliver: bodySliver,
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

class _HomeDrawerContent extends StatelessWidget {
  const _HomeDrawerContent({
    required this.selectedIndex,
    required this.onSelect,
  });

  final int selectedIndex;
  final void Function(int index) onSelect;

  @override
  Widget build(BuildContext context) {
    final s = context.screenSize;
    return ColoredBox(
      color: AppColors.surface,
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            vertical: s.horizontalPadding,
            horizontal: s.horizontalPadding * 0.75,
          ),
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: s.horizontalPadding * 0.25,
                bottom: s.sectionSpacing * 0.5,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  AppImages.logo,
                  height: s.homeAppBarLogoHeight + 8,
                  fit: BoxFit.contain,
                  errorBuilder: (_, __, ___) => Icon(
                    Icons.image_not_supported_outlined,
                    size: s.homeAppBarLogoHeight + 8,
                    color: AppColors.onSurfaceTertiary,
                  ),
                ),
              ),
            ),
            for (var i = 0; i < HomeAppBar.navLabels.length; i++)
              ListTile(
                selected: i == selectedIndex,
                selectedTileColor: AppColors.accent.withValues(alpha: 0.08),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: s.horizontalPadding,
                  vertical: s.horizontalPadding * 0.15,
                ),
                title: Text(
                  HomeAppBar.navLabels[i],
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: i == selectedIndex
                        ? AppColors.accent
                        : AppColors.onSurface,
                    fontWeight: i == selectedIndex
                        ? FontWeight.w600
                        : FontWeight.w500,
                    fontSize: s.bodyLargeSize,
                  ),
                ),
                onTap: () => onSelect(i),
              ),
          ],
        ),
      ),
    );
  }
}

class _ThemeToggle extends ConsumerWidget {
  const _ThemeToggle();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);
    final isDark =
        themeMode == ThemeMode.dark ||
        (themeMode == ThemeMode.system &&
            Theme.of(context).brightness == Brightness.dark);

    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: context.screenSize.horizontalPadding,
        ),
        child: Material(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(12),
          child: InkWell(
            onTap: () {
              ref.read(themeModeProvider.notifier).state = isDark
                  ? ThemeMode.light
                  : ThemeMode.dark;
            },
            borderRadius: BorderRadius.circular(12),
            child: Padding(
              padding: context.screenSize.themeTogglePadding,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    isDark ? Icons.dark_mode : Icons.light_mode,
                    color: AppColors.accent,
                    size: context.screenSize.themeToggleIconSize,
                  ),
                  SizedBox(width: context.screenSize.horizontalPadding * 0.5),
                  Text(
                    isDark ? 'Тёмная тема' : 'Светлая тема',
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: AppColors.onSurface,
                      fontSize: context.screenSize.labelLargeSize,
                    ),
                  ),
                  SizedBox(width: context.screenSize.horizontalPadding * 0.5),
                  Icon(
                    Icons.swap_horiz,
                    color: AppColors.onSurfaceVariant,
                    size: context.screenSize.themeToggleIconSmallSize,
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
