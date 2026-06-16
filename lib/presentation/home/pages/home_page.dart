import 'dart:async';
import 'dart:ui' show lerpDouble;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_images.dart';
import '../../../core/constants/home_sizes.dart';
import '../../../core/constants/screen_size.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/widgets/cards/home_glass_panel.dart';
import '../../../domain/models/category_type/category_type.dart';
import '../../../domain/models/product/product_catalog.dart';
import '../../../domain/models/project/project_catalog.dart';
import '../providers/home_di.dart';
import '../widgets/home_about_section.dart';
import '../widgets/home_advantages_section.dart';
import '../widgets/home_app_bar.dart';
import '../widgets/home_banner_section.dart';
import '../widgets/home_campaigns_section.dart';
import '../widgets/home_categories_section.dart';
import '../widgets/home_design_request_section.dart';
import '../widgets/home_footer.dart';
import '../widgets/home_furniture_section.dart';
import '../widgets/home_kitchens_section.dart';
import '../widgets/home_portfolio_section.dart';
import '../widgets/home_search_modal.dart';
import '../widgets/home_welcome_section.dart';

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
  final _advantagesSectionKey = GlobalKey();
  final _kitchenCatalogKey = GlobalKey();
  final _popularKitchensKey = GlobalKey();
  final _newKitchensKey = GlobalKey();
  final _furnitureCatalogKey = GlobalKey();
  final _popularFurnitureKey = GlobalKey();
  final _newFurnitureKey = GlobalKey();
  final _portfolioSectionKey = GlobalKey();
  final _campaignsSectionKey = GlobalKey();
  final _designRequestKey = GlobalKey();
  final _aboutSectionKey = GlobalKey();

  int _selectedNavIndex = 0;

  late final AnimationController _appBarHideController;
  late final Animation<double> _appBarHideCurve;
  double _lastScrollPixels = 0;

  @override
  void initState() {
    super.initState();
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
    super.dispose();
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

  void _openSearch() {
    unawaited(HomeSearchModal.show(context));
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

  void _scrollToSection(GlobalKey key, {double alignment = 0.00}) {
    final ctx = key.currentContext;
    if (ctx != null) {
      unawaited(
        Scrollable.ensureVisible(
          ctx,
          duration: const Duration(milliseconds: 1000),
          curve: Curves.easeInOut,
          alignment: alignment,
        ),
      );
    }
  }

  void _scrollToFurniture() {
    if (_popularFurnitureKey.currentContext != null) {
      _scrollToSection(_popularFurnitureKey);
      return;
    }
    _scrollToSection(_furnitureCatalogKey);
  }

  bool _catalogHasProducts(AsyncValue<ProductCatalog> async) => async.maybeWhen(
    data: (catalog) => catalog.items.isNotEmpty,
    orElse: () => false,
  );

  bool _catalogHasProjects(AsyncValue<ProjectCatalog> async) => async.maybeWhen(
    data: (catalog) => catalog.items.isNotEmpty,
    orElse: () => false,
  );

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
    final backgroundImagesAsync = ref.watch(
      HomeDi.homeBackgroundImagesProvider,
    );
    final backgroundImageUrls = backgroundImagesAsync.maybeWhen(
      data: (items) => items.map((e) => e.url).toList(),
      orElse: () => const <String>[],
    );

    final hitsKitchensAsync = ref.watch(HomeDi.homeHitsKitchensProvider);
    final newKitchensAsync = ref.watch(HomeDi.homeNewKitchensProvider);
    final hitsFurnitureAsync = ref.watch(HomeDi.homeHitsFurnitureProvider);
    final newFurnitureAsync = ref.watch(HomeDi.homeNewFurnitureProvider);
    final portfolioAsync = ref.watch(HomeDi.homePortfolioProvider);

    final welcomeNavItems = [
      HomeWelcomeNavItem(
        label: 'Каталог кухонь',
        onTap: () => _scrollToSection(_kitchenCatalogKey),
      ),
      if (_catalogHasProducts(hitsKitchensAsync))
        HomeWelcomeNavItem(
          label: 'Популярные кухни',
          onTap: () => _scrollToSection(_popularKitchensKey),
        ),
      if (_catalogHasProducts(newKitchensAsync))
        HomeWelcomeNavItem(
          label: 'Новинки кухонь',
          onTap: () => _scrollToSection(_newKitchensKey),
        ),
      HomeWelcomeNavItem(
        label: 'Каталог мебели',
        onTap: () => _scrollToSection(_furnitureCatalogKey),
      ),
      if (_catalogHasProducts(hitsFurnitureAsync))
        HomeWelcomeNavItem(
          label: 'Популярная мебель',
          onTap: () => _scrollToSection(_popularFurnitureKey),
        ),
      if (_catalogHasProducts(newFurnitureAsync))
        HomeWelcomeNavItem(
          label: 'Новинки мебели',
          onTap: () => _scrollToSection(_newFurnitureKey),
        ),
      if (_catalogHasProjects(portfolioAsync))
        HomeWelcomeNavItem(
          label: 'Портфолио',
          onTap: () => _scrollToSection(_portfolioSectionKey),
        ),
      HomeWelcomeNavItem(
        label: 'Акции',
        onTap: () => _scrollToSection(_campaignsSectionKey),
      ),
      HomeWelcomeNavItem(
        label: 'Заказать проект',
        onTap: () => _scrollToSection(_designRequestKey),
      ),
      HomeWelcomeNavItem(
        label: 'О компании',
        onTap: () => _scrollToSection(_aboutSectionKey),
      ),
    ];

    final bodySliver = SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          HomeWelcomeSection(navItems: welcomeNavItems),
          SizedBox(height: screenSize.sectionSpacing),
          const HomeBannerSection(),
          KeyedSubtree(
            key: _kitchenCatalogKey,
            child: const HomeCategoriesSection(
              title: 'Каталог кухонь',
              categoryType: CategoryType.kitchen,
            ),
          ),
          HomeKitchensSection(
            popularSectionKey: _popularKitchensKey,
            newSectionKey: _newKitchensKey,
          ),
          KeyedSubtree(
            key: _furnitureCatalogKey,
            child: const HomeCategoriesSection(
              title: 'Каталог мебели',
              categoryType: CategoryType.furniture,
            ),
          ),
          HomeFurnitureSection(
            popularSectionKey: _popularFurnitureKey,
            newSectionKey: _newFurnitureKey,
          ),
          HomePortfolioSection(sectionKey: _portfolioSectionKey),
          KeyedSubtree(
            key: _campaignsSectionKey,
            child: const HomeCampaignsSection(),
          ),
          KeyedSubtree(
            key: _designRequestKey,
            child: const HomeDesignRequestSection(),
          ),
          KeyedSubtree(
            key: _advantagesSectionKey,
            child: const HomeAdvantagesSection(),
          ),
          KeyedSubtree(key: _aboutSectionKey, child: const HomeAboutSection()),
          const HomeFooter(),
          const _ThemeToggle(),
        ],
      ),
    );

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: AppColors.homePageBackground,
      extendBodyBehindAppBar: true,
      drawerScrimColor: Colors.transparent,
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
            onSearchTap: _openSearch,
            onFavoritesTap: _onFavoritesTap,
            onOpenDrawer: screenSize.isExpanded
                ? null
                : () => _scaffoldKey.currentState?.openEndDrawer(),
            onNavItemTap: _onNavSelect,
          ),
        ),
      ),
      endDrawer: screenSize.isExpanded
          ? null
          : Drawer(
              backgroundColor: Colors.transparent,
              elevation: 0,
              child: _HomeSideMenuContent(
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
          Positioned.fill(
            child: _AnimatedBackgroundFrames(urls: backgroundImageUrls),
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

class _AnimatedBackgroundFrames extends StatefulWidget {
  const _AnimatedBackgroundFrames({required this.urls});

  final List<String> urls;

  @override
  State<_AnimatedBackgroundFrames> createState() =>
      _AnimatedBackgroundFramesState();
}

class _AnimatedBackgroundFramesState extends State<_AnimatedBackgroundFrames> {
  static const _switchDuration = Duration(milliseconds: 1200);

  /// Интервал смены кадра — совпадает с полным циклом zoom, чтобы не обрывать анимацию.
  static const _slideInterval = Duration(milliseconds: 7200);

  /// Длительность zoom (в 2 раза дольше прежних 3600 ms).
  static const _zoomDuration = Duration(milliseconds: 7200);
  static const _zoomStart = 1.0;

  /// Амплитуда zoom в 2 раза сильнее (раньше было +0.08, теперь +0.16).
  static const _zoomEnd = 1.16;

  Timer? _timer;
  int _index = 0;

  @override
  void initState() {
    super.initState();
    _startLoop();
  }

  @override
  void didUpdateWidget(covariant _AnimatedBackgroundFrames oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.urls != widget.urls) {
      _index = 0;
      _startLoop();
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startLoop() {
    _timer?.cancel();
    if (widget.urls.length <= 1) return;
    _timer = Timer.periodic(_slideInterval, (_) {
      if (!mounted || widget.urls.isEmpty) return;
      setState(() => _index = (_index + 1) % widget.urls.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    if (widget.urls.isEmpty) {
      return _backgroundAsset();
    }

    final i = _index % widget.urls.length;
    final current = widget.urls[i];
    // Ключ по индексу обязателен: при одинаковых URL у разных элементов
    // AnimatedSwitcher и TweenAnimationBuilder иначе не пересоздаются.
    return AnimatedSwitcher(
      duration: _switchDuration,
      switchInCurve: Curves.easeInOutCubic,
      switchOutCurve: Curves.easeInOutCubic,
      child: TweenAnimationBuilder<double>(
        key: ValueKey<int>(i),
        tween: Tween<double>(begin: _zoomStart, end: _zoomEnd),
        duration: _zoomDuration,
        curve: Curves.easeInOut,
        builder: (context, scale, child) =>
            Transform.scale(scale: scale, child: child),
        child: _backgroundNetwork(current),
      ),
    );
  }

  Widget _backgroundAsset() => Image.asset(
    AppImages.backgroundFallback,
    fit: BoxFit.cover,
    width: double.infinity,
    height: double.infinity,
  );

  Widget _backgroundNetwork(String url) => Image.network(
    url,
    fit: BoxFit.cover,
    width: double.infinity,
    height: double.infinity,
    errorBuilder: (_, __, ___) => _backgroundAsset(),
  );
}

class _HomeSideMenuContent extends StatelessWidget {
  const _HomeSideMenuContent({
    required this.selectedIndex,
    required this.onSelect,
  });

  final int selectedIndex;
  final ValueChanged<int> onSelect;

  @override
  Widget build(BuildContext context) {
    final s = context.screenSize;
    final itemPadding = EdgeInsets.symmetric(
      horizontal: s.horizontalPadding * 0.25,
      vertical: s.horizontalPadding * 0.15,
    );
    final itemSpacing = s.homeSideMenuNavItemSpacing;

    return HomeGlassPanel(
      border: HomeGlassPanel.sideSheetBorderFromRight(),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            s.horizontalPadding,
            s.horizontalPadding * 0.5,
            s.horizontalPadding,
            s.horizontalPadding,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
                      color: AppColors.onSurface,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      for (var i = 0; i < HomeAppBar.navLabels.length; i++) ...[
                        if (i > 0) SizedBox(height: itemSpacing),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: HomeAppBarNavButton(
                            key: ValueKey('home-side-nav-$i'),
                            label: HomeAppBar.navLabels[i],
                            screenSize: s,
                            selected: i == selectedIndex,
                            padding: itemPadding,
                            fontSize: ScreenSize.expanded.homeAppBarNavTextSize,
                            showSelectedUnderline: true,
                            underlineHeight:
                                ScreenSize.expanded.homeAppBarUnderlineHeight,
                            onPressed: () => onSelect(i),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ],
          ),
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
