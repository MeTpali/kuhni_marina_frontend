import 'dart:ui' as ui;
import 'dart:ui' show FragmentProgram, ImageFilter;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'liquid_glass.dart';
import 'widgets/backdrop_displace_layer.dart';
import 'widgets/backdrop_magnifier_layer.dart';

/// Стеклянная карточка: [BackdropFilter], **равномерная** заливка [LiquidGlassTokens.variantMonotoneWash]
/// (~80% прозрачность слоя), обводка [LiquidGlassTokens.variantBorderColor] (border не убирается),
/// настраиваемое размытие. Градиентного блика нет.
///
/// ### Тинт
///
/// * Базовый цвет «стекла» — всегда [LiquidGlassTokens.variantMonotoneWash] для [variant]
///   (одинаково с картой и без [onTap], без второго оттенка).
/// * Если задан [tint] — **дополнительный** полупрозрачный слой поверх заливки.
/// * [interactionTintEnabled] зарезервирован (раньше включал другой автотинт); на цвет
///   заливки не влияет.
class LiquidGlassCard extends StatefulWidget {
  const LiquidGlassCard({
    required this.child,
    this.variant = LiquidGlassVariant.light,
    this.tint,
    this.interactionTintEnabled = true,
    this.blurSigma = 4,
    this.blurSigmaY,
    this.hoverAnimation = true,
    this.lightText = true,
    this.onTap,
    super.key,
  });

  final Widget child;
  final LiquidGlassVariant variant;

  /// Дополнительный тинт поверх [LiquidGlassTokens.variantMonotoneWash]; `null` — только заливка варианта.
  final Color? tint;

  /// Зарезервирован под будущее поведение; на цвет не влияет.
  final bool interactionTintEnabled;

  /// σ по оси X для [ImageFilter.blur].
  final double blurSigma;

  /// σ по оси Y; `null` — как [blurSigma].
  final double? blurSigmaY;

  final bool hoverAnimation;
  final bool lightText;
  final VoidCallback? onTap;

  @override
  State<LiquidGlassCard> createState() => _LiquidGlassCardState();
}

class _LiquidGlassCardState extends State<LiquidGlassCard>
    with SingleTickerProviderStateMixin {
  static const EdgeInsets _padNormal = EdgeInsets.all(12.8);
  static const EdgeInsets _padHover = EdgeInsets.fromLTRB(12.8, 24, 12.8, 24);
  static const double _radiusNormal = 16;
  static const double _radiusHover = 24;

  late final AnimationController _controller;
  late final Animation<double> _radius;
  late final Animation<EdgeInsetsGeometry> _padding;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: LiquidGlassTokens.glassDuration,
    );
    final curved = CurvedAnimation(
      parent: _controller,
      curve: LiquidGlassTokens.glassCurve,
    );
    _radius = Tween<double>(
      begin: _radiusNormal,
      end: _radiusHover,
    ).animate(curved);
    _padding = EdgeInsetsGeometryTween(
      begin: _padNormal,
      end: _padHover,
    ).animate(curved);
    if (!widget.hoverAnimation) {
      _controller.value = 0;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _setHovered(bool v) async {
    if (!widget.hoverAnimation) return;
    if (v) {
      await _controller.forward();
    } else {
      await _controller.reverse();
    }
  }

  double _radiusValue() =>
      widget.hoverAnimation ? _radius.value : _radiusNormal;

  EdgeInsetsGeometry _paddingValue() =>
      widget.hoverAnimation ? _padding.value : _padNormal;

  @override
  Widget build(BuildContext context) {
    Widget core = AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final radius = _radiusValue();
        final pad = _paddingValue();
        final overlayTint = widget.tint;
        final sy = widget.blurSigmaY ?? widget.blurSigma;

        return DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(radius),
            child: Stack(
              fit: StackFit.passthrough,
              children: [
                Positioned.fill(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: widget.blurSigma,
                      sigmaY: sy,
                    ),
                    child: const ColoredBox(color: Colors.transparent),
                  ),
                ),
                Positioned.fill(
                  child: ColoredBox(
                    color: LiquidGlassTokens.variantMonotoneWash(
                      widget.variant,
                    ),
                  ),
                ),
                if (overlayTint != null)
                  Positioned.fill(child: ColoredBox(color: overlayTint)),
                Positioned.fill(
                  child: CustomPaint(
                    painter: _LiquidGlassBorderPainter(
                      variant: widget.variant,
                      radius: radius,
                    ),
                  ),
                ),
                Padding(
                  padding: pad,
                  child: _maybeTextShadow(
                    lightText: widget.lightText,
                    child: widget.child,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );

    if (widget.hoverAnimation) {
      core = MouseRegion(
        onEnter: (_) async => _setHovered(true),
        onExit: (_) async => _setHovered(false),
        child: core,
      );
    }

    if (widget.onTap != null) {
      core = Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: widget.onTap,
          borderRadius: BorderRadius.circular(_radiusHover),
          child: core,
        ),
      );
    }

    return core;
  }
}

/// Продвинутая карточка: как [LiquidGlassCard] (blur / равномерная заливка / **border**),
/// плюс опционально **displacement** по снимку и/или **лупа**. Оба эффекта по умолчанию выключены.
///
/// Тинт: только явный [tint] поверх [LiquidGlassTokens.variantMonotoneWash], как у обычной карточки.
///
/// При [enableDisplacement] нужны [backdropKey], [snapshot], [displaceProgram].
/// При [enableMagnifier] — [magnifyProgram] и те же [backdropKey]/[snapshot].
class LiquidGlassCardAdvanced extends StatefulWidget {
  const LiquidGlassCardAdvanced({
    required this.child,
    required this.backdropKey,
    required this.snapshot,
    this.variant = LiquidGlassVariant.light,
    this.tint,
    this.interactionTintEnabled = true,
    this.blurSigma = 4,
    this.blurSigmaY,
    this.hoverAnimation = true,
    this.lightText = true,
    this.onTap,
    this.enableDisplacement = false,
    this.displaceProgram,
    this.displacementScale = 48,
    this.shaderBlurSigma = 2.5,
    this.enableMagnifier = false,
    this.magnifyProgram,
    this.magnifierZoom = 1.85,
    this.magnifierEdgeSoftness = 2.15,
    this.magnifierLensCoversCard = true,
    super.key,
  });

  final Widget child;
  final LiquidGlassVariant variant;

  /// Дополнительный слой поверх [LiquidGlassTokens.variantMonotoneWash].
  final Color? tint;

  /// Зарезервирован; на цвет не влияет (см. [LiquidGlassCard]).
  final bool interactionTintEnabled;

  final double blurSigma;
  final double? blurSigmaY;

  final bool hoverAnimation;
  final bool lightText;
  final VoidCallback? onTap;

  final GlobalKey backdropKey;
  final ValueListenable<ui.Image?> snapshot;

  final bool enableDisplacement;
  final FragmentProgram? displaceProgram;
  final double displacementScale;
  final double shaderBlurSigma;

  /// Лупа на **всю** площадь карточки ([BackdropMagnifierLayer.lensCoversLayer]),
  /// под заливкой и тинтом; жесты не перехватывает ([IgnorePointer]).
  final bool enableMagnifier;
  final FragmentProgram? magnifyProgram;
  final double magnifierZoom;
  final double magnifierEdgeSoftness;

  /// Передаётся в [BackdropMagnifierLayer.lensCoversLayer] (`true` — на весь прямоугольник).
  final bool magnifierLensCoversCard;

  @override
  State<LiquidGlassCardAdvanced> createState() =>
      _LiquidGlassCardAdvancedState();
}

class _LiquidGlassCardAdvancedState extends State<LiquidGlassCardAdvanced>
    with SingleTickerProviderStateMixin {
  static const EdgeInsets _padNormal = EdgeInsets.all(12.8);
  static const EdgeInsets _padHover = EdgeInsets.fromLTRB(12.8, 24, 12.8, 24);
  static const double _radiusNormal = 16;
  static const double _radiusHover = 24;

  final GlobalKey _panelKey = GlobalKey();
  final GlobalKey _magnifierLayerKey = GlobalKey();

  late final AnimationController _controller;
  late final Animation<double> _radius;
  late final Animation<EdgeInsetsGeometry> _padding;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: LiquidGlassTokens.glassDuration,
    );
    final curved = CurvedAnimation(
      parent: _controller,
      curve: LiquidGlassTokens.glassCurve,
    );
    _radius = Tween<double>(
      begin: _radiusNormal,
      end: _radiusHover,
    ).animate(curved);
    _padding = EdgeInsetsGeometryTween(
      begin: _padNormal,
      end: _padHover,
    ).animate(curved);
    if (!widget.hoverAnimation) {
      _controller.value = 0;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _setHovered(bool v) async {
    if (!widget.hoverAnimation) return;
    if (v) {
      await _controller.forward();
    } else {
      await _controller.reverse();
    }
  }

  double _radiusValue() =>
      widget.hoverAnimation ? _radius.value : _radiusNormal;

  EdgeInsetsGeometry _paddingValue() =>
      widget.hoverAnimation ? _padding.value : _padNormal;

  Widget _backgroundLayer(double radius) {
    if (widget.enableDisplacement && widget.displaceProgram != null) {
      return BackdropDisplaceLayer(
        backdropKey: widget.backdropKey,
        layerKey: _panelKey,
        snapshot: widget.snapshot,
        program: widget.displaceProgram!,
        displacementScale: widget.displacementScale,
        shaderBlurSigma: widget.shaderBlurSigma,
        borderRadius: BorderRadius.circular(radius),
      );
    }
    final sy = widget.blurSigmaY ?? widget.blurSigma;
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: widget.blurSigma, sigmaY: sy),
      child: const ColoredBox(color: Colors.transparent),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget core = AnimatedBuilder(
      animation: Listenable.merge([_controller, widget.snapshot]),
      builder: (context, _) {
        final radius = _radiusValue();
        final pad = _paddingValue();
        final overlayTint = widget.tint;

        return DecoratedBox(
          key: _panelKey,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(radius),
            clipBehavior: Clip.antiAlias,
            child: Stack(
              fit: StackFit.passthrough,
              clipBehavior: Clip.none,
              children: [
                Positioned.fill(child: _backgroundLayer(radius)),
                // Лупа под заливкой/тинтом — иначе выглядит «сырой» снимок без стекла.
                if (widget.enableMagnifier && widget.magnifyProgram != null)
                  Positioned.fill(
                    child: IgnorePointer(
                      child: SizedBox.expand(
                        key: _magnifierLayerKey,
                        child: BackdropMagnifierLayer(
                          backdropKey: widget.backdropKey,
                          layerKey: _magnifierLayerKey,
                          snapshot: widget.snapshot,
                          program: widget.magnifyProgram!,
                          zoom: widget.magnifierZoom,
                          edgeSoftness: widget.magnifierEdgeSoftness,
                          lensCoversLayer: widget.magnifierLensCoversCard,
                        ),
                      ),
                    ),
                  ),
                Positioned.fill(
                  child: ColoredBox(
                    color: LiquidGlassTokens.variantMonotoneWash(
                      widget.variant,
                    ),
                  ),
                ),
                if (overlayTint != null)
                  Positioned.fill(child: ColoredBox(color: overlayTint)),
                Positioned.fill(
                  child: CustomPaint(
                    painter: _LiquidGlassBorderPainter(
                      variant: widget.variant,
                      radius: radius,
                    ),
                  ),
                ),
                Padding(
                  padding: pad,
                  child: _maybeTextShadow(
                    lightText: widget.lightText,
                    child: widget.child,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );

    if (widget.hoverAnimation) {
      core = MouseRegion(
        onEnter: (_) async => _setHovered(true),
        onExit: (_) async => _setHovered(false),
        child: core,
      );
    }

    if (widget.onTap != null) {
      core = Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: widget.onTap,
          borderRadius: BorderRadius.circular(_radiusHover),
          child: core,
        ),
      );
    }

    return core;
  }
}

Widget _maybeTextShadow({required bool lightText, required Widget child}) {
  if (!lightText) return child;
  return DefaultTextStyle.merge(
    style: TextStyle(
      shadows: [
        Shadow(
          offset: const Offset(3, 2),
          blurRadius: 10,
          color: Colors.black.withValues(alpha: 0.6),
        ),
      ],
    ),
    child: child,
  );
}

/// Только обводка по варианту (без градиентных бликов).
class _LiquidGlassBorderPainter extends CustomPainter {
  _LiquidGlassBorderPainter({required this.variant, required this.radius});

  final LiquidGlassVariant variant;
  final double radius;

  @override
  void paint(Canvas canvas, Size size) {
    final rrect = RRect.fromRectAndRadius(
      Offset.zero & size,
      Radius.circular(radius),
    );
    canvas.save();
    canvas.clipRRect(rrect);
    final border = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1
      ..color = LiquidGlassTokens.variantBorderColor(variant);
    canvas.drawRRect(rrect.deflate(0.5), border);
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant _LiquidGlassBorderPainter oldDelegate) =>
      oldDelegate.variant != variant || oldDelegate.radius != radius;
}
