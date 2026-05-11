import 'dart:async';
import 'dart:ui' as ui;
import 'dart:ui' show FragmentProgram, ImageFilter;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import 'liquid_glass.dart';
import 'widgets/backdrop_displace_layer.dart';
import 'widgets/backdrop_magnifier_layer.dart';

/// Длительность наведения / снятия лайка (масштаб и цвет сердца).
const Duration _kLikeButtonAnimationDuration = Duration(seconds: 1);

const Curve _kLikeButtonAnimationCurve = Curves.easeInOut;

/// Круглая стеклянная кнопка «лайк»: blur + wash + обводка (как у `LiquidGlassCard`).
///
/// При наведении (если [isLiked] == false): масштаб **+10%**, иконка **красная**,
/// без вертикального «растягивания» как у карточки. Если [isLiked] — сразу
/// увеличенное состояние и красное сердце, наведение визуально не меняет вид.
class LiquidGlassLikeButton extends StatelessWidget {
  const LiquidGlassLikeButton({
    required this.isLiked,
    this.variant = LiquidGlassVariant.light,
    this.tint,
    this.blurSigma = 4,
    this.blurSigmaY,
    this.onTap,
    this.iconSize = 22,
    this.basePadding = 4,
    super.key,
  });

  final bool isLiked;
  final LiquidGlassVariant variant;
  final Color? tint;
  final double blurSigma;
  final double? blurSigmaY;
  final VoidCallback? onTap;
  final double iconSize;
  final double basePadding;

  @override
  Widget build(BuildContext context) => _LiquidGlassLikeButtonCore(
    isLiked: isLiked,
    variant: variant,
    blurSigma: blurSigma,
    iconSize: iconSize,
    basePadding: basePadding,
    tint: tint,
    blurSigmaY: blurSigmaY,
    onTap: onTap,
  );
}

/// Как простая кнопка лайка, плюс опционально displacement и лупа по снимку
/// (как у `LiquidGlassCardAdvanced`).
class LiquidGlassLikeButtonAdvanced extends StatelessWidget {
  const LiquidGlassLikeButtonAdvanced({
    required this.isLiked,
    required this.backdropKey,
    required this.snapshot,
    this.variant = LiquidGlassVariant.light,
    this.tint,
    this.blurSigma = 4,
    this.blurSigmaY,
    this.onTap,
    this.iconSize = 22,
    this.basePadding = 4,
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

  final bool isLiked;
  final LiquidGlassVariant variant;
  final Color? tint;
  final double blurSigma;
  final double? blurSigmaY;
  final VoidCallback? onTap;
  final double iconSize;
  final double basePadding;

  final GlobalKey backdropKey;
  final ValueListenable<ui.Image?> snapshot;

  final bool enableDisplacement;
  final FragmentProgram? displaceProgram;
  final double displacementScale;
  final double shaderBlurSigma;

  final bool enableMagnifier;
  final FragmentProgram? magnifyProgram;
  final double magnifierZoom;
  final double magnifierEdgeSoftness;
  final bool magnifierLensCoversCard;

  @override
  Widget build(BuildContext context) => _LiquidGlassLikeButtonCore(
    isLiked: isLiked,
    variant: variant,
    blurSigma: blurSigma,
    iconSize: iconSize,
    basePadding: basePadding,
    backdropKey: backdropKey,
    snapshot: snapshot,
    enableDisplacement: enableDisplacement,
    displaceProgram: displaceProgram,
    displacementScale: displacementScale,
    shaderBlurSigma: shaderBlurSigma,
    enableMagnifier: enableMagnifier,
    magnifyProgram: magnifyProgram,
    magnifierZoom: magnifierZoom,
    magnifierEdgeSoftness: magnifierEdgeSoftness,
    magnifierLensCoversCard: magnifierLensCoversCard,
    tint: tint,
    blurSigmaY: blurSigmaY,
    onTap: onTap,
  );
}

class _LiquidGlassLikeButtonCore extends StatefulWidget {
  const _LiquidGlassLikeButtonCore({
    required this.isLiked,
    required this.variant,
    required this.blurSigma,
    required this.iconSize,
    required this.basePadding,
    this.tint,
    this.blurSigmaY,
    this.onTap,
    this.backdropKey,
    this.snapshot,
    this.enableDisplacement = false,
    this.displaceProgram,
    this.displacementScale = 48,
    this.shaderBlurSigma = 2.5,
    this.enableMagnifier = false,
    this.magnifyProgram,
    this.magnifierZoom = 1.85,
    this.magnifierEdgeSoftness = 2.15,
    this.magnifierLensCoversCard = true,
  });

  final bool isLiked;
  final LiquidGlassVariant variant;
  final Color? tint;
  final double blurSigma;
  final double? blurSigmaY;
  final VoidCallback? onTap;
  final double iconSize;
  final double basePadding;

  final GlobalKey? backdropKey;
  final ValueListenable<ui.Image?>? snapshot;

  final bool enableDisplacement;
  final FragmentProgram? displaceProgram;
  final double displacementScale;
  final double shaderBlurSigma;

  final bool enableMagnifier;
  final FragmentProgram? magnifyProgram;
  final double magnifierZoom;
  final double magnifierEdgeSoftness;
  final bool magnifierLensCoversCard;

  @override
  State<_LiquidGlassLikeButtonCore> createState() =>
      _LiquidGlassLikeButtonCoreState();
}

class _LiquidGlassLikeButtonCoreState extends State<_LiquidGlassLikeButtonCore>
    with SingleTickerProviderStateMixin {
  final GlobalKey _panelKey = GlobalKey();
  final GlobalKey _magnifierLayerKey = GlobalKey();

  late final AnimationController _drive;
  bool _pointerInside = false;

  @override
  void initState() {
    super.initState();
    _drive = AnimationController(
      vsync: this,
      duration: _kLikeButtonAnimationDuration,
    );
    _drive.value = widget.isLiked ? 1.0 : 0.0;
  }

  @override
  void didUpdateWidget(covariant _LiquidGlassLikeButtonCore oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.isLiked != widget.isLiked) {
      if (widget.isLiked) {
        _drive.value = 1.0;
      } else if (_pointerInside) {
        _drive.value = 1.0;
      } else {
        unawaited(
          _drive.animateTo(
            0.0,
            duration: _kLikeButtonAnimationDuration,
            curve: _kLikeButtonAnimationCurve,
          ),
        );
      }
    }
  }

  @override
  void dispose() {
    _drive.dispose();
    super.dispose();
  }

  Future<void> _setHover(bool hovered) async {
    if (widget.isLiked) return;
    if (hovered) {
      await _drive.animateTo(
        1.0,
        duration: _kLikeButtonAnimationDuration,
        curve: _kLikeButtonAnimationCurve,
      );
    } else {
      await _drive.animateTo(
        0.0,
        duration: _kLikeButtonAnimationDuration,
        curve: _kLikeButtonAnimationCurve,
      );
    }
  }

  Color _iconIdleColor() => switch (widget.variant) {
    LiquidGlassVariant.light => AppColors.onSurface,
    LiquidGlassVariant.dark => Colors.white.withValues(alpha: 0.92),
    LiquidGlassVariant.accent => Colors.white.withValues(alpha: 0.95),
  };

  Widget _backgroundLayer(double radius) {
    final hasBackdrop = widget.backdropKey != null && widget.snapshot != null;
    final useDisplace =
        hasBackdrop &&
        widget.enableDisplacement &&
        widget.displaceProgram != null;

    if (useDisplace) {
      return BackdropDisplaceLayer(
        backdropKey: widget.backdropKey!,
        layerKey: _panelKey,
        snapshot: widget.snapshot!,
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
    final scaler = MediaQuery.textScalerOf(context);
    final pad = scaler.scale(widget.basePadding);
    final iconSize = scaler.scale(widget.iconSize);
    final d0 = iconSize + 2 * pad;
    final radius = d0 * 0.5;
    final outer = d0 * 1.1;

    final useMagnifier =
        widget.backdropKey != null &&
        widget.snapshot != null &&
        widget.enableMagnifier &&
        widget.magnifyProgram != null;

    final repaint = widget.snapshot != null
        ? Listenable.merge([_drive, widget.snapshot!])
        : _drive;

    Widget core = AnimatedBuilder(
      animation: repaint,
      builder: (context, _) {
        final t = widget.isLiked ? 1.0 : _drive.value.clamp(0.0, 1.0);
        final scale = 1.0 + 0.1 * t;
        final iconColor = Color.lerp(_iconIdleColor(), AppColors.accent, t)!;

        final glass = DecoratedBox(
          key: _panelKey,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 4),
                blurRadius: 5,
                color: Color(0x33000000),
              ),
              BoxShadow(
                offset: Offset(0, 0),
                blurRadius: 14,
                color: Color(0x1A000000),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(radius),
            clipBehavior: Clip.antiAlias,
            child: Stack(
              fit: StackFit.expand,
              clipBehavior: Clip.none,
              children: [
                Positioned.fill(child: _backgroundLayer(radius)),
                if (useMagnifier)
                  Positioned.fill(
                    child: IgnorePointer(
                      child: SizedBox.expand(
                        key: _magnifierLayerKey,
                        child: BackdropMagnifierLayer(
                          backdropKey: widget.backdropKey!,
                          layerKey: _magnifierLayerKey,
                          snapshot: widget.snapshot!,
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
                if (widget.tint != null)
                  Positioned.fill(child: ColoredBox(color: widget.tint!)),
                Positioned.fill(
                  child: CustomPaint(
                    painter: _LikeGlassBorderPainter(
                      variant: widget.variant,
                      radius: radius,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(pad),
                  child: Center(
                    child: Icon(
                      Icons.favorite_border_rounded,
                      size: iconSize,
                      color: iconColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );

        return SizedBox(
          width: d0,
          height: d0,
          child: Transform.scale(
            scale: scale,
            alignment: Alignment.center,
            child: glass,
          ),
        );
      },
    );

    core = SizedBox(
      width: outer,
      height: outer,
      child: Center(child: core),
    );

    core = MouseRegion(
      onEnter: (_) {
        _pointerInside = true;
        if (!widget.isLiked) unawaited(_setHover(true));
      },
      onExit: (_) {
        _pointerInside = false;
        if (!widget.isLiked) unawaited(_setHover(false));
      },
      child: core,
    );

    if (widget.onTap != null) {
      core = Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: widget.onTap,
          customBorder: const CircleBorder(),
          child: core,
        ),
      );
    }

    return core;
  }
}

/// Обводка круга (как у карточки, без градиентных бликов).
class _LikeGlassBorderPainter extends CustomPainter {
  _LikeGlassBorderPainter({required this.variant, required this.radius});

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
  bool shouldRepaint(covariant _LikeGlassBorderPainter oldDelegate) =>
      oldDelegate.variant != variant || oldDelegate.radius != radius;
}
