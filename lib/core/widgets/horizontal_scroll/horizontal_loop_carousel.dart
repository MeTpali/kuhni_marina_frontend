import 'dart:async' show Timer, unawaited;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../constants/home_sizes.dart';
import '../../constants/screen_size.dart';
import 'horizontal_scroll_edge_hover_zone.dart';

/// Горизонтальная зацикленная лента с медленным автоскроллом и стрелками
/// ([HorizontalScrollEdgeHoverZone], liquid glass), по идее как у карусели акций.
class HorizontalLoopCarousel<T> extends StatefulWidget {
  const HorizontalLoopCarousel({
    required this.items,
    required this.itemKey,
    required this.itemBuilder,
    required this.itemWidth,
    required this.gap,
    required this.height,
    required this.screenSize,
    super.key,
    this.loopRepeats = 100,
    this.autoScroll = true,
    this.autoScrollStepPx = 0.55,
    this.autoScrollTick = const Duration(milliseconds: 16),
    this.arrowViewportFraction = 0.42,
    this.arrowAnimationDuration = const Duration(milliseconds: 1250),
    this.arrowEdgePaddingFactor = 0.25,
  });

  final List<T> items;
  final Object? Function(T item) itemKey;
  final Widget Function(BuildContext context, T item, int listIndex) itemBuilder;

  final double itemWidth;
  final double gap;
  final double height;
  final ScreenSize screenSize;

  final int loopRepeats;
  final bool autoScroll;
  final double autoScrollStepPx;
  final Duration autoScrollTick;
  final double arrowViewportFraction;
  final Duration arrowAnimationDuration;

  /// Множитель к [HomeSizes.horizontalPadding] для отступа стрелки от края.
  final double arrowEdgePaddingFactor;

  @override
  State<HorizontalLoopCarousel<T>> createState() =>
      _HorizontalLoopCarouselState<T>();
}

class _HorizontalLoopCarouselState<T> extends State<HorizontalLoopCarousel<T>> {
  final ScrollController _controller = ScrollController();
  Timer? _autoTimer;
  bool _isUserInteracting = false;
  bool _hoverLeft = false;
  bool _hoverRight = false;
  double _cycleWidth = 0;
  bool _didInitialScroll = false;

  int get _n => widget.items.length;

  @override
  void initState() {
    super.initState();
    if (widget.autoScroll) {
      _startAutoScroll();
    }
  }

  void _startAutoScroll() {
    _autoTimer?.cancel();
    if (!widget.autoScroll) return;
    _autoTimer = Timer.periodic(widget.autoScrollTick, (_) {
      if (!mounted || !_controller.hasClients || _isUserInteracting) return;
      final pos = _controller.position;
      if (pos.maxScrollExtent <= 0 || _cycleWidth <= 0) return;
      var next = _controller.offset + widget.autoScrollStepPx;
      if (next >= pos.maxScrollExtent) {
        next = (_controller.offset - _cycleWidth).clamp(0.0, pos.maxScrollExtent);
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
        curve: Curves.easeInOut,
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
    if (!mounted || !_controller.hasClients || _cycleWidth <= 0) return;
    if (_didInitialScroll) return;
    _didInitialScroll = true;
    final mid = (widget.loopRepeats ~/ 2) * _cycleWidth;
    final max = _controller.position.maxScrollExtent;
    _controller.jumpTo(mid.clamp(0.0, max));
  }

  @override
  void didUpdateWidget(covariant HorizontalLoopCarousel<T> oldWidget) {
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

  /// Ширина одного повтора ленты: `n * (itemWidth + gap)`.
  double _computeCycleWidth() {
    if (_n <= 0) return 0;
    return _n * (widget.itemWidth + widget.gap);
  }

  @override
  Widget build(BuildContext context) {
    if (_n == 0) {
      return const SizedBox.shrink();
    }

    final s = widget.screenSize;
    final edgePad = s.horizontalPadding * widget.arrowEdgePaddingFactor;
    final itemCount = _n * widget.loopRepeats;

    _cycleWidth = _computeCycleWidth();
    if (_cycleWidth > 0 && !_didInitialScroll) {
      WidgetsBinding.instance.addPostFrameCallback(_applyInitialCarouselOffset);
    }

    return SizedBox(
      height: widget.height,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
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
            child: ListView.separated(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.zero,
              itemCount: itemCount,
              separatorBuilder: (_, __) => SizedBox(width: widget.gap),
              itemBuilder: (context, index) {
                final item = widget.items[index % _n];
                return SizedBox(
                  width: widget.itemWidth,
                  height: widget.height,
                  child: widget.itemBuilder(context, item, index),
                );
              },
            ),
          ),
          Positioned.fill(
            child: Row(
              children: [
                Expanded(
                  child: HorizontalScrollEdgeHoverZone(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: edgePad),
                    hovered: _hoverLeft,
                    onHoverChanged: (v) => setState(() => _hoverLeft = v),
                    slideEnd: const Offset(-0.22, 0),
                    onZoneTap: () => unawaited(_scrollByViewport(-1)),
                    icon: Icons.chevron_left_rounded,
                    iconSize: s.bannerNavArrowSize,
                    fullSideHitTarget: true,
                  ),
                ),
                const Expanded(
                  flex: 3,
                  child: IgnorePointer(child: SizedBox.expand()),
                ),
                Expanded(
                  child: HorizontalScrollEdgeHoverZone(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.only(right: edgePad),
                    hovered: _hoverRight,
                    onHoverChanged: (v) => setState(() => _hoverRight = v),
                    slideEnd: const Offset(0.22, 0),
                    onZoneTap: () => unawaited(_scrollByViewport(1)),
                    icon: Icons.chevron_right_rounded,
                    iconSize: s.bannerNavArrowSize,
                    fullSideHitTarget: true,
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
