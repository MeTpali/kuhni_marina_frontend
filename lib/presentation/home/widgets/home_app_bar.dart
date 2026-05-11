import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_images.dart';
import '../../../core/constants/home_sizes.dart';
import '../../../core/constants/screen_size.dart';

/// Верхняя панель главной: логотип, при широком экране — текстовое меню по центру,
/// избранное и поиск; на узком/среднем — после иконок кнопка открытия бокового меню.
class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    required this.toolbarInnerHeight,
    required this.onSearchTap,
    required this.onFavoritesTap,
    required this.selectedNavIndex,
    required this.onNavItemTap,
    this.onOpenDrawer,
    super.key,
  });

  final double toolbarInnerHeight;
  final VoidCallback onSearchTap;
  final VoidCallback onFavoritesTap;
  final VoidCallback? onOpenDrawer;

  /// Индекс выбранного пункта: 0 главная, 1 каталог, …
  final int selectedNavIndex;

  /// Индекс пункта: 0 главная, 1 каталог, 2 мебель, 3 о нас, 4 контакты.
  final ValueChanged<int> onNavItemTap;

  static const List<String> navLabels = [
    'Главная',
    'Каталог',
    'Мебель',
    'О нас',
    'Контакты',
  ];

  @override
  Widget build(BuildContext context) {
    final top = MediaQuery.paddingOf(context).top;
    final s = context.screenSize;
    final expanded = s.isExpanded;

    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: s.homeAppBarBlurSigma,
          sigmaY: s.homeAppBarBlurSigma,
        ),
        child: Container(
          height: top + toolbarInnerHeight,
          padding: EdgeInsets.only(top: top),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.2),
            border: Border(
              bottom: BorderSide(color: AppColors.outline, width: 1),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: s.horizontalPadding),
            child: Center(
              child: Row(
                children: [
                  Image.asset(
                    AppImages.logo,
                    height: s.homeAppBarLogoHeight,
                    fit: BoxFit.contain,
                    errorBuilder: (_, __, ___) => SizedBox(
                      height: s.homeAppBarLogoHeight,
                      child: Icon(
                        Icons.image_not_supported_outlined,
                        size: s.homeAppBarLogoHeight,
                        color: AppColors.onSurfaceTertiary,
                      ),
                    ),
                  ),
                  if (expanded) ...[
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox.shrink(),
                          const SizedBox.shrink(),
                          _HomeExpandedNavStrip(
                            screenSize: s,
                            selectedIndex: selectedNavIndex,
                            onItemTap: onNavItemTap,
                          ),
                          const SizedBox.shrink(),
                        ],
                      ),
                    ),
                  ] else
                    const Spacer(),
                  _HomeAppBarIconButton(
                    icon: Icons.favorite_border_rounded,
                    screenSize: s,
                    onPressed: onFavoritesTap,
                  ),
                  _HomeAppBarIconButton(
                    icon: Icons.search_rounded,
                    screenSize: s,
                    onPressed: onSearchTap,
                  ),
                  if (!expanded && onOpenDrawer != null)
                    IconButton(
                      onPressed: onOpenDrawer,
                      icon: Icon(
                        Icons.menu_rounded,
                        size: s.homeAppBarActionIconSize,
                        color: AppColors.onSurface,
                      ),
                      tooltip: 'Меню',
                      style: IconButton.styleFrom(
                        padding: EdgeInsets.all(s.horizontalPadding * 0.35),
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

/// Иконка в app bar: плавный переход цвета при наведении, без подсказки и splash.
class _HomeAppBarIconButton extends StatefulWidget {
  const _HomeAppBarIconButton({
    required this.icon,
    required this.screenSize,
    required this.onPressed,
  });

  final IconData icon;
  final ScreenSize screenSize;
  final VoidCallback onPressed;

  @override
  State<_HomeAppBarIconButton> createState() => _HomeAppBarIconButtonState();
}

class _HomeAppBarIconButtonState extends State<_HomeAppBarIconButton>
    with SingleTickerProviderStateMixin {
  static const Duration _colorDuration = Duration(milliseconds: 220);

  late final AnimationController _hoverController;
  late final Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();
    _hoverController = AnimationController(
      vsync: this,
      duration: _colorDuration,
    );
    _colorAnimation =
        ColorTween(begin: AppColors.onSurface, end: AppColors.accent).animate(
          CurvedAnimation(parent: _hoverController, curve: Curves.easeInOut),
        );
  }

  @override
  void dispose() {
    _hoverController.dispose();
    super.dispose();
  }

  void _setHovered(bool hovered) {
    if (hovered) {
      _hoverController.forward();
    } else {
      _hoverController.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    final s = widget.screenSize;
    return MouseRegion(
      onEnter: (_) => _setHovered(true),
      onExit: (_) => _setHovered(false),
      cursor: SystemMouseCursors.click,
      child: ListenableBuilder(
        listenable: _hoverController,
        builder: (context, _) {
          return IconButton(
            onPressed: widget.onPressed,
            style: IconButton.styleFrom(
              padding: EdgeInsets.all(s.horizontalPadding * 0.35),
              overlayColor: Colors.transparent,
              splashFactory: NoSplash.splashFactory,
            ),
            icon: Icon(
              widget.icon,
              size: s.homeAppBarActionIconSize,
              color: _colorAnimation.value ?? AppColors.onSurface,
            ),
          );
        },
      ),
    );
  }
}

class _HomeExpandedNavStrip extends StatefulWidget {
  const _HomeExpandedNavStrip({
    required this.screenSize,
    required this.selectedIndex,
    required this.onItemTap,
  });

  final ScreenSize screenSize;
  final int selectedIndex;
  final ValueChanged<int> onItemTap;

  @override
  State<_HomeExpandedNavStrip> createState() => _HomeExpandedNavStripState();
}

class _HomeExpandedNavStripState extends State<_HomeExpandedNavStrip> {
  /// Зазор между подписью пункта и подчёркиванием (логические пиксели).
  static const double _underlineTopGap = 2;

  final GlobalKey _rowKey = GlobalKey();
  late final List<GlobalKey> _itemKeys;

  double _underlineLeft = 0;
  double _underlineWidth = 0;
  bool _measured = false;

  @override
  void initState() {
    super.initState();
    _itemKeys = List<GlobalKey>.generate(
      HomeAppBar.navLabels.length,
      (_) => GlobalKey(),
    );
    WidgetsBinding.instance.addPostFrameCallback((_) => _measureUnderline());
  }

  @override
  void didUpdateWidget(covariant _HomeExpandedNavStrip oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.selectedIndex != widget.selectedIndex ||
        oldWidget.screenSize != widget.screenSize) {
      WidgetsBinding.instance.addPostFrameCallback((_) => _measureUnderline());
    }
  }

  void _measureUnderline() {
    if (!mounted) return;
    final i = widget.selectedIndex;
    if (i < 0 || i >= _itemKeys.length) return;

    final itemCtx = _itemKeys[i].currentContext;
    final rowCtx = _rowKey.currentContext;
    if (itemCtx == null || rowCtx == null) return;

    final itemBox = itemCtx.findRenderObject() as RenderBox?;
    final rowBox = rowCtx.findRenderObject() as RenderBox?;
    if (itemBox == null ||
        rowBox == null ||
        !itemBox.hasSize ||
        !rowBox.hasSize) {
      return;
    }

    final topLeft = itemBox.localToGlobal(Offset.zero);
    final originInRow = rowBox.globalToLocal(topLeft);
    final nextLeft = originInRow.dx;
    final nextWidth = itemBox.size.width;

    if (_measured &&
        _underlineLeft == nextLeft &&
        _underlineWidth == nextWidth) {
      return;
    }

    setState(() {
      _underlineLeft = nextLeft;
      _underlineWidth = nextWidth;
      _measured = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final s = widget.screenSize;
    final h = s.homeAppBarUnderlineHeight;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.bottomLeft,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: _underlineTopGap + h),
            child: Row(
              key: _rowKey,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                for (var i = 0; i < HomeAppBar.navLabels.length; i++)
                  _NavTextButton(
                    key: _itemKeys[i],
                    label: HomeAppBar.navLabels[i],
                    screenSize: s,
                    selected: i == widget.selectedIndex,
                    onPressed: () => widget.onItemTap(i),
                  ),
              ],
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 280),
            curve: Curves.easeOutCubic,
            left: _underlineLeft,
            bottom: 0,
            width: _underlineWidth,
            height: h,
            child: IgnorePointer(
              ignoring: true,
              child: AnimatedOpacity(
                opacity: _measured && _underlineWidth > 0 ? 1 : 0,
                duration: const Duration(milliseconds: 160),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: AppColors.accent,
                    borderRadius: BorderRadius.circular(h * 0.5),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _NavTextButton extends StatefulWidget {
  const _NavTextButton({
    required this.label,
    required this.screenSize,
    required this.selected,
    required this.onPressed,
    super.key,
  });

  final String label;
  final ScreenSize screenSize;
  final bool selected;
  final VoidCallback onPressed;

  @override
  State<_NavTextButton> createState() => _NavTextButtonState();
}

class _NavTextButtonState extends State<_NavTextButton> {
  bool _hover = false;

  @override
  Widget build(BuildContext context) {
    final s = widget.screenSize;
    final color = widget.selected || _hover
        ? AppColors.accent
        : AppColors.onSurface;
    final base = Theme.of(context).textTheme.labelMedium ?? const TextStyle();
    final fontWeight = widget.selected ? FontWeight.w700 : FontWeight.w700;

    return MouseRegion(
      onEnter: (_) => setState(() => _hover = true),
      onExit: (_) => setState(() => _hover = false),
      cursor: SystemMouseCursors.click,
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Colors.transparent,
          padding: EdgeInsets.symmetric(
            horizontal: s.homeAppBarNavButtonPaddingH,
          ),
          minimumSize: Size.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          splashFactory: NoSplash.splashFactory,
        ).copyWith(overlayColor: WidgetStateProperty.all(Colors.transparent)),
        onPressed: widget.onPressed,
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 220),
          curve: Curves.easeInOut,
          style: base.copyWith(
            color: color,
            fontSize: s.homeAppBarNavTextSize,
            fontWeight: fontWeight,
            letterSpacing: 0.6,
          ),
          child: Text(widget.label.toUpperCase()),
        ),
      ),
    );
  }
}
