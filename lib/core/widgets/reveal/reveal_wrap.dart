import 'dart:async';
import 'dart:math' as math;
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

/// Как появляется дочерний виджет при попадании в область видимости.
enum RevealEntranceVariant {
  /// Только opacity 0 → 1.
  fade,

  /// Fade + сдвиг сверху вниз.
  fadeSlideFromTop,

  /// Fade + снизу вверх.
  fadeSlideFromBottom,

  /// Fade + справа налево.
  fadeSlideFromRight,

  /// Fade + слева направо.
  fadeSlideFromLeft,

  /// Fade + масштаб 0 → 1.
  fadeScale,

  /// Fade + «падение на экран»: как будто карточка выше зрителя и опускается —
  /// **scale от >1 к 1** (3D-ощущение без отдельной перспективы).
  fadeLayOnSurface,
}

/// Обёртка: дочерний виджет анимируется при пересечении порога видимости
/// (удобно в [ListView] / скролле).
///
/// Использует [VisibilityDetector] — у каждого экземпляра должен быть **уникальный**
/// [Key] (например `ValueKey('reveal-$index')`).
///
/// По умолчанию анимация играет **один раз**. При [resetWhenLeavingViewport] ==
/// `true` при уходе с экрана (доля видимости ниже [visibilityThreshold]) состояние
/// сбрасывается, и при следующем появлении анимация проигрывается снова.
///
/// Длительность по умолчанию — **1 секунда**.
class RevealWrap extends StatefulWidget {
  const RevealWrap({
    super.key,
    required this.child,
    this.variant = RevealEntranceVariant.fade,
    this.duration = const Duration(seconds: 1),
    this.curve = Curves.easeOutCubic,
    this.visibilityThreshold = 0.06,
    this.slideDistance = 56,
    this.layOnStartScale = 1.2,
    this.resetWhenLeavingViewport = false,
  });

  final Widget child;

  /// Сценарий появления.
  final RevealEntranceVariant variant;

  /// Длительность появления.
  final Duration duration;

  final Curve curve;

  /// Доля видимости [0…1], при которой считается «на экране» / запускается анимация.
  final double visibilityThreshold;

  /// Амплитуда сдвига для вариантов `fadeSlideFrom*`, логические пиксели.
  final double slideDistance;

  /// Стартовый масштаб для [RevealEntranceVariant.fadeLayOnSurface] (> 1), к концу анимации — 1.
  final double layOnStartScale;

  /// Если `true`, при падении видимости ниже [visibilityThreshold] анимация
  /// сбрасывается в начало; при следующем появлении проигрывается снова.
  final bool resetWhenLeavingViewport;

  @override
  State<RevealWrap> createState() => _RevealWrapState();
}

class _RevealWrapState extends State<RevealWrap>
    with SingleTickerProviderStateMixin {
  /// Отдельно от [RevealWrap.key] — у [VisibilityDetector] должен быть свой ключ.
  final GlobalKey _visibilityDetectorKey = GlobalKey(debugLabel: 'RevealWrap');

  late final AnimationController _controller;
  late final Animation<double> _t;
  bool _hasTriggered = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: widget.duration);
    _t = CurvedAnimation(parent: _controller, curve: widget.curve);
  }

  @override
  void didUpdateWidget(covariant RevealWrap oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.duration != widget.duration) {
      _controller.duration = widget.duration;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onVisibility(VisibilityInfo info) {
    if (!mounted) return;
    final f = info.visibleFraction;
    final th = widget.visibilityThreshold;

    if (widget.resetWhenLeavingViewport) {
      if (f < th) {
        if (_controller.value != 0 || _hasTriggered) {
          _controller.reset();
          _hasTriggered = false;
        }
        return;
      }
      if (!_hasTriggered) {
        _hasTriggered = true;
        unawaited(_controller.forward(from: 0));
      }
      return;
    }

    if (_hasTriggered) return;
    if (f >= th) {
      _hasTriggered = true;
      unawaited(_controller.forward());
    }
  }

  @override
  Widget build(BuildContext context) => VisibilityDetector(
    key: _visibilityDetectorKey,
    onVisibilityChanged: _onVisibility,
    child: AnimatedBuilder(
      animation: _t,
      builder: (context, child) {
        final t = _t.value.clamp(0.0, 1.0);
        return _buildEffect(t, child!);
      },
      child: widget.child,
    ),
  );

  Widget _buildEffect(double t, Widget child) {
    final opacity = t;

    switch (widget.variant) {
      case RevealEntranceVariant.fade:
        return Opacity(opacity: opacity, child: child);

      case RevealEntranceVariant.fadeSlideFromTop:
        return Opacity(
          opacity: opacity,
          child: Transform.translate(
            offset: Offset(0, (1 - t) * -widget.slideDistance),
            child: child,
          ),
        );

      case RevealEntranceVariant.fadeSlideFromBottom:
        return Opacity(
          opacity: opacity,
          child: Transform.translate(
            offset: Offset(0, (1 - t) * widget.slideDistance),
            child: child,
          ),
        );

      case RevealEntranceVariant.fadeSlideFromLeft:
        return Opacity(
          opacity: opacity,
          child: Transform.translate(
            offset: Offset((1 - t) * -widget.slideDistance, 0),
            child: child,
          ),
        );

      case RevealEntranceVariant.fadeSlideFromRight:
        return Opacity(
          opacity: opacity,
          child: Transform.translate(
            offset: Offset((1 - t) * widget.slideDistance, 0),
            child: child,
          ),
        );

      case RevealEntranceVariant.fadeScale:
        final s = math.max(0.001, t);
        return Opacity(
          opacity: opacity,
          child: Transform.scale(
            scale: s,
            alignment: Alignment.center,
            child: child,
          ),
        );

      case RevealEntranceVariant.fadeLayOnSurface:
        final start = math.max(widget.layOnStartScale, 1.001);
        final scale = ui.lerpDouble(start, 1, t)!;
        return Opacity(
          opacity: opacity,
          child: Transform.scale(
            scale: scale,
            alignment: Alignment.center,
            child: child,
          ),
        );
    }
  }
}
