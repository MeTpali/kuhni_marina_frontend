import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../core/constants/app_colors.dart';

/// Горизонтальная карусель с профилем «picker» (единая дуга сверху/снизу на всю
/// ширину), боковыми стрелками и бесшовным зацикливанием ленты.
///
/// Во вьюпорте по умолчанию видно [visibleItemCount] элементов с зазором [gap].
class PickerLoopCarousel<T> extends StatefulWidget {
  const PickerLoopCarousel({
    required this.items,
    required this.itemKey,
    required this.itemBuilder,
    required this.height,
    required this.centerInset,
    super.key,
    this.visibleItemCount = 3,
    this.gap = 14,
    this.loopRepeats = 100,
    this.autoScroll = true,
    this.autoScrollStepPx = 0.6,
    this.autoScrollTick = const Duration(milliseconds: 16),
    this.arrowViewportFraction = 0.5,
    this.arrowAnimationDuration = const Duration(milliseconds: 650),
  });

  final List<T> items;

  /// Стабильный ключ элемента (например id), чтобы не сбрасывать offset при
  /// пересборке списка с тем же составом и порядком.
  final Object? Function(T item) itemKey;

  final Widget Function(BuildContext context, T item, double itemWidth)
  itemBuilder;

  /// Полная высота виджета (включая «растяжение» дуг).
  final double height;

  /// Глубина вогнутости клипа; для профиля от баннера:
  /// `(maxHeight - baseHeight) / 2`.
  final double centerInset;

  /// Сколько карточек одновременно помещается по ширине.
  final int visibleItemCount;

  final double gap;

  /// Сколько повторов [items] в физической ленте.
  final int loopRepeats;

  final bool autoScroll;
  final double autoScrollStepPx;
  final Duration autoScrollTick;

  /// Доля ширины вьюпорта за одно нажатие стрелки.
  final double arrowViewportFraction;

  final Duration arrowAnimationDuration;

  /// Высота карусели, если опираться на высоту главного баннера.
  static double heightForBannerAnchor({
    required double bannerHeight,
    double heightFactor = 0.5,
    double maxEdgeStretch = 1.5,
  }) =>
      bannerHeight * heightFactor * maxEdgeStretch;

  /// [centerInset] для [PickerLoopCarousel] при якоре от баннера.
  static double centerInsetForBannerAnchor({
    required double bannerHeight,
    double heightFactor = 0.5,
    double maxEdgeStretch = 1.5,
  }) {
    final base = bannerHeight * heightFactor;
    final max = base * maxEdgeStretch;
    return (max - base) / 2;
  }

  @override
  State<PickerLoopCarousel<T>> createState() => _PickerLoopCarouselState<T>();
}

class _PickerLoopCarouselState<T> extends State<PickerLoopCarousel<T>> {
  final ScrollController _controller = ScrollController();
  Timer? _autoTimer;
  bool _isUserInteracting = false;
  bool _hoverLeft = false;
  bool _hoverRight = false;
  double _cycleWidth = 0;
  bool _didInitialScroll = false;

  @override
  void initState() {
    super.initState();
    if (widget.autoScroll) {
      _startAutoScroll();
    }
  }

  void _startAutoScroll() {
    _autoTimer?.cancel();
    if (!widget.autoScroll) {
      return;
    }
    _autoTimer = Timer.periodic(widget.autoScrollTick, (_) {
      if (!mounted || !_controller.hasClients || _isUserInteracting) return;
      final pos = _controller.position;
      if (pos.maxScrollExtent <= 0 || _cycleWidth <= 0) return;
      var next = _controller.offset + widget.autoScrollStepPx;
      if (next >= pos.maxScrollExtent) {
        next = (_controller.offset - _cycleWidth).clamp(
          0.0,
          pos.maxScrollExtent,
        );
      }
      _controller.jumpTo(next);
    });
  }

  Future<void> _scrollByViewport(int direction) async {
    if (!_controller.hasClients) return;
    final pos = _controller.position;
    final viewport = pos.viewportDimension;
    if (viewport <= 0) return;
    final delta = viewport * widget.arrowViewportFraction;
    final target = (_controller.offset + direction * delta).clamp(
      0.0,
      pos.maxScrollExtent,
    );
    if ((target - _controller.offset).abs() < 1) return;

    _isUserInteracting = true;
    try {
      await _controller.animateTo(
        target,
        duration: widget.arrowAnimationDuration,
        curve: Curves.easeInOutCubic,
      );
    } finally {
      _isUserInteracting = false;
    }
  }

  @override
  void dispose() {
    _autoTimer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  void _applyInitialCarouselOffset(Duration _) {
    if (!mounted || !_controller.hasClients || _cycleWidth <= 0) {
      return;
    }
    if (_didInitialScroll) {
      return;
    }
    _didInitialScroll = true;
    final mid = (widget.loopRepeats ~/ 2) * _cycleWidth;
    final max = _controller.position.maxScrollExtent;
    _controller.jumpTo(mid.clamp(0.0, max));
  }

  @override
  void didUpdateWidget(covariant PickerLoopCarousel<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.items.length != widget.items.length ||
        !_sameItemKeys(oldWidget.items, widget.items)) {
      _didInitialScroll = false;
    }
    if (oldWidget.autoScroll != widget.autoScroll) {
      _autoTimer?.cancel();
      if (widget.autoScroll) {
        _startAutoScroll();
      }
    }
  }

  bool _sameItemKeys(List<T> a, List<T> b) {
    if (a.length != b.length) return false;
    for (var i = 0; i < a.length; i++) {
      if (widget.itemKey(a[i]) != widget.itemKey(b[i])) return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    final n = widget.items.length;
    if (n == 0) {
      return const SizedBox.shrink();
    }

    final visible = widget.visibleItemCount.clamp(1, 100);
    final gap = widget.gap;

    return SizedBox(
      height: widget.height,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final maxW = constraints.maxWidth;
          final itemWidth =
              (maxW - (visible - 1) * gap) / visible;

          _cycleWidth = n * (itemWidth + gap);

          if (_cycleWidth > 0 && !_didInitialScroll) {
            WidgetsBinding.instance.addPostFrameCallback(
              _applyInitialCarouselOffset,
            );
          }

          final itemCount = n * widget.loopRepeats;

          return Stack(
            fit: StackFit.expand,
            children: [
              NotificationListener<ScrollNotification>(
                onNotification: (notification) {
                  if (notification is ScrollStartNotification &&
                      notification.dragDetails != null) {
                    _isUserInteracting = true;
                  } else if (notification is ScrollEndNotification) {
                    _isUserInteracting = false;
                  } else if (notification is UserScrollNotification &&
                      notification.direction == ScrollDirection.idle) {
                    _isUserInteracting = false;
                  }
                  return false;
                },
                child: ClipPath(
                  clipper: ContinuousCarouselClipper(
                    centerInset: widget.centerInset,
                  ),
                  child: ListView.separated(
                    controller: _controller,
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(right: gap),
                    itemCount: itemCount,
                    separatorBuilder: (_, __) => SizedBox(width: gap),
                    itemBuilder: (context, index) {
                      final item = widget.items[index % n];
                      return SizedBox(
                        width: itemWidth,
                        height: widget.height,
                        child: widget.itemBuilder(
                          context,
                          item,
                          itemWidth,
                        ),
                      );
                    },
                  ),
                ),
              ),
              Positioned.fill(
                child: Row(
                  children: [
                    Expanded(
                      child: _PickerSideArrowZone(
                        alignment: Alignment.centerLeft,
                        hovered: _hoverLeft,
                        onHoverChanged: (v) => setState(() => _hoverLeft = v),
                        icon: Icons.chevron_left_rounded,
                        onTap: () => unawaited(_scrollByViewport(-1)),
                      ),
                    ),
                    const Expanded(
                      child: IgnorePointer(child: SizedBox.expand()),
                    ),
                    Expanded(
                      child: _PickerSideArrowZone(
                        alignment: Alignment.centerRight,
                        hovered: _hoverRight,
                        onHoverChanged: (v) =>
                            setState(() => _hoverRight = v),
                        icon: Icons.chevron_right_rounded,
                        onTap: () => unawaited(_scrollByViewport(1)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

/// Клипер единой квадратичной дуги по верху и низу полосы карусели.
class ContinuousCarouselClipper extends CustomClipper<Path> {
  const ContinuousCarouselClipper({required this.centerInset});

  final double centerInset;

  @override
  Path getClip(Size size) {
    final d = centerInset.clamp(0.0, size.height * 0.45);
    final p = Path()
      ..moveTo(0, 0)
      ..quadraticBezierTo(size.width / 2, d, size.width, 0)
      ..lineTo(size.width, size.height)
      ..quadraticBezierTo(size.width / 2, size.height - d, 0, size.height)
      ..close();
    return p;
  }

  @override
  bool shouldReclip(covariant ContinuousCarouselClipper oldClipper) =>
      oldClipper.centerInset != centerInset;
}

class _PickerSideArrowZone extends StatelessWidget {
  const _PickerSideArrowZone({
    required this.alignment,
    required this.hovered,
    required this.onHoverChanged,
    required this.icon,
    required this.onTap,
  });

  final Alignment alignment;
  final bool hovered;
  final ValueChanged<bool> onHoverChanged;
  final IconData icon;
  final VoidCallback onTap;

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
          onTap: onTap,
          child: const SizedBox.expand(),
        ),
      ),
      Align(
        alignment: alignment,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: IgnorePointer(
            child: AnimatedOpacity(
              opacity: hovered ? 1 : 0,
              duration: const Duration(milliseconds: 180),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: AppColors.white.withValues(alpha: 0.26),
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6),
                  child: Icon(icon, color: AppColors.white, size: 28),
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
