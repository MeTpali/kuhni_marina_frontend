import 'dart:ui' as ui;
import 'dart:ui' show FragmentProgram;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../backdrop_capture.dart';
import 'backdrop_magnifier_layer.dart';

/// Слой, который рисует **искажённый снимок** общего фона через [FragmentProgram]
/// (`shaders/liquid_glass_displace.frag`).
///
/// ## Идея
///
/// Тот же пайплин, что у `LiquidGlassCardAdvanced` (`liquid_glass_card.dart`): фон один раз снимается в текстуру
/// ([BackdropRepaintCapture] + [ValueListenable]), а этот виджет только сэмплирует
/// её в своей области с UV-warp и лёгким blur в шейдере.
///
/// ## Как подключить
///
/// 1. Повесьте [GlobalKey] на [RepaintBoundary], который оборачивает **только**
///    тот фон, который нужно показывать под стеклом/лупой (без самих оверлеев).
/// 2. Оберните этот фон в [BackdropRepaintCapture] (или свой аналог), который
///    периодически вызывает [RenderRepaintBoundary.toImage] и кладёт результат в
///    [ValueListenable]<[ui.Image]?>`.
/// 3. В [Stack] **поверх** фона разместите область с этим виджетом (часто
///    [Positioned.fill] внутри карточки).
/// 4. Передайте [layerKey] — [GlobalKey] того же виджета, который задаёт
///    **прямоугольник области** (карточка, `SizedBox` и т.д.). По положению
///    этого бокса и снимка считается смещение `uOrigin*` в текстуре.
/// 5. Загрузите [FragmentProgram] один раз: `FragmentProgram.fromAsset('shaders/liquid_glass_displace.frag')`.
///
/// ## Ограничения
///
/// * Дорого по CPU/GPU из-за `toImage`; частоту снимка держите разумной.
/// * Снимок не «живой» backdrop из движка — это растровая копия, возможен лаг.
///
/// См. также [BackdropMagnifierLayer] — лупа по тому же снимку.
///
/// Обзор пайплайна: `README.md`, `doc/backdrop_shader_guide.md` в корне репозитория.
class BackdropDisplaceLayer extends StatelessWidget {
  /// Создаёт слой displacement по снимку фона.
  const BackdropDisplaceLayer({
    required this.backdropKey,
    required this.layerKey,
    required this.snapshot,
    required this.program,
    this.displacementScale = 48,
    this.shaderBlurSigma = 2.5,
    this.borderRadius = BorderRadius.zero,
    this.placeholder = const ColoredBox(color: Color(0x33000000)),
    super.key,
  });

  /// [GlobalKey] на [RepaintBoundary] с фоном (тот же ключ, что у захвата).
  final GlobalKey backdropKey;

  /// [GlobalKey] на виджет области, в которой рисуется слой (карточка, контейнер).
  final GlobalKey layerKey;

  /// Актуальный снимок фона (тот же [ValueListenable], что пишет захват).
  final ValueListenable<ui.Image?> snapshot;

  /// Скомпилированный `liquid_glass_displace.frag`.
  final FragmentProgram program;

  /// Сила смещения UV (см. uniform `uDispScale` в шейдере).
  final double displacementScale;

  /// Размытие в шейдере (uniform `uBlurSigma`).
  final double shaderBlurSigma;

  /// Обрезка слоя (скругления карточки).
  final BorderRadius borderRadius;

  /// Пока снимка ещё нет.
  final Widget placeholder;

  @override
  Widget build(BuildContext context) {
    final dpr = MediaQuery.devicePixelRatioOf(context);
    return AnimatedBuilder(
      animation: snapshot,
      builder: (context, _) {
        final image = snapshot.value;
        if (image == null) return placeholder;
        return CustomPaint(
          painter: _BackdropDisplacePainter(
            program: program,
            image: image,
            backdropKey: backdropKey,
            layerKey: layerKey,
            displacementScale: displacementScale,
            blurSigma: shaderBlurSigma,
            devicePixelRatio: dpr,
            borderRadius: borderRadius,
          ),
          child: const SizedBox.expand(),
        );
      },
    );
  }
}

/// Реализация отрисовки; не используйте напрямую — только [BackdropDisplaceLayer].
class _BackdropDisplacePainter extends CustomPainter {
  _BackdropDisplacePainter({
    required this.program,
    required this.image,
    required this.backdropKey,
    required this.layerKey,
    required this.displacementScale,
    required this.blurSigma,
    required this.devicePixelRatio,
    required this.borderRadius,
  });

  final FragmentProgram program;
  final ui.Image image;
  final GlobalKey backdropKey;
  final GlobalKey layerKey;
  final double displacementScale;
  final double blurSigma;
  final double devicePixelRatio;
  final BorderRadius borderRadius;

  @override
  void paint(Canvas canvas, Size size) {
    final boundary =
        backdropKey.currentContext?.findRenderObject() as RenderBox?;
    final layer = layerKey.currentContext?.findRenderObject() as RenderBox?;
    if (boundary == null || layer == null) return;

    final originLogical =
        layer.localToGlobal(Offset.zero) - boundary.localToGlobal(Offset.zero);
    final originTex = originLogical * devicePixelRatio;

    final shader = program.fragmentShader();
    shader.setFloat(0, image.width.toDouble());
    shader.setFloat(1, image.height.toDouble());
    shader.setFloat(2, originTex.dx);
    shader.setFloat(3, originTex.dy);
    shader.setFloat(4, displacementScale);
    shader.setFloat(5, blurSigma);
    shader.setImageSampler(0, image);

    canvas.save();
    canvas.clipRRect(borderRadius.toRRect(Offset.zero & size));
    canvas.drawRect(Offset.zero & size, Paint()..shader = shader);
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant _BackdropDisplacePainter oldDelegate) =>
      oldDelegate.image != image ||
      oldDelegate.displacementScale != displacementScale ||
      oldDelegate.blurSigma != blurSigma ||
      oldDelegate.devicePixelRatio != devicePixelRatio ||
      oldDelegate.borderRadius != borderRadius;
}
