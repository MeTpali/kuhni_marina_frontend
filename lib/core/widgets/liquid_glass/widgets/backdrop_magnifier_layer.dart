import 'dart:math' as math;
import 'dart:ui' as ui;
import 'dart:ui' show FragmentProgram;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'backdrop_displace_layer.dart';

/// Круглая **лупа** над общим снимком фона (тот же принцип, что у [BackdropDisplaceLayer]).
///
/// Шейдер: `shaders/liquid_glass_magnify.frag` — внутри круга текстура сэмплится
/// с **радиальным** усилением: в центре ~[zoom], к ободу круга стремится к 1:1,
/// чтобы был характерный перепад увеличения и стык с фоном без «лупы-скейла».
///
/// ## Как подключить
///
/// Используйте **те же** [backdropKey], [layerKey] и [snapshot], что и для
/// [BackdropDisplaceLayer]. [layerKey] должен висеть на виджете, который задаёт
/// **прямоугольник** области лупы (квадратный [SizedBox]; круг задаётся клипом
/// внутри отрисовщика, без обязательного [ClipOval] снаружи).
///
/// Центр линзы — середина [Size] в **физических** пикселях.
/// [lensCoversLayer] — радиус описанной окружности (`√(w²+h²)/2`), лупа на **всю**
/// площадь прямоугольника; иначе вписанный круг `min(w,h)/2`.
///
/// ## Параметры
///
/// * [zoom] — максимальное увеличение **в центре** линзы (например `1.6`…`2.4`).
/// * [edgeSoftness] — степень спада к краю: больше — резче «ядро» линзы
///   (показатель в `pow(r, edgeSoftness)`), типично `1.4`…`3.0`.
///
/// См. [BackdropDisplaceLayer] для общей схемы захвата фона.
///
/// Обзор и советы по артефактам: `README.md`, `doc/backdrop_shader_guide.md`.
class BackdropMagnifierLayer extends StatelessWidget {
  const BackdropMagnifierLayer({
    required this.backdropKey,
    required this.layerKey,
    required this.snapshot,
    required this.program,
    this.zoom = 1.85,
    this.edgeSoftness = 2.15,
    this.lensCoversLayer = true,
    this.placeholder = const ColoredBox(color: Color(0x22000000)),
    super.key,
  });

  final GlobalKey backdropKey;
  final GlobalKey layerKey;
  final ValueListenable<ui.Image?> snapshot;
  final FragmentProgram program;

  /// Максимальное увеличение в центре линзы (> 1).
  final double zoom;

  /// Крутизна спада зума к ободу (показатель степени от 0 в центре до 1 у края).
  final double edgeSoftness;

  /// `true` (по умолчанию) — линза на всю площадь слоя (прямоугольник карточки).
  final bool lensCoversLayer;

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
          painter: _BackdropMagnifierPainter(
            program: program,
            image: image,
            backdropKey: backdropKey,
            layerKey: layerKey,
            zoom: zoom,
            edgeSoftness: edgeSoftness,
            lensCoversLayer: lensCoversLayer,
            devicePixelRatio: dpr,
          ),
          child: const SizedBox.expand(),
        );
      },
    );
  }
}

class _BackdropMagnifierPainter extends CustomPainter {
  _BackdropMagnifierPainter({
    required this.program,
    required this.image,
    required this.backdropKey,
    required this.layerKey,
    required this.zoom,
    required this.edgeSoftness,
    required this.lensCoversLayer,
    required this.devicePixelRatio,
  });

  final FragmentProgram program;
  final ui.Image image;
  final GlobalKey backdropKey;
  final GlobalKey layerKey;
  final double zoom;
  final double edgeSoftness;
  final bool lensCoversLayer;
  final double devicePixelRatio;

  @override
  void paint(Canvas canvas, Size size) {
    final boundary =
        backdropKey.currentContext?.findRenderObject() as RenderBox?;
    final layer = layerKey.currentContext?.findRenderObject() as RenderBox?;
    if (boundary == null || layer == null) return;

    final originLogical =
        layer.localToGlobal(Offset.zero) - boundary.localToGlobal(Offset.zero);
    final originTex = originLogical * devicePixelRatio;

    final w = size.width * devicePixelRatio;
    final h = size.height * devicePixelRatio;
    final lensCx = w * 0.5;
    final lensCy = h * 0.5;
    final radiusPx = lensCoversLayer
        ? 0.5 * math.sqrt(w * w + h * h) + 1.5
        : math.min(w, h) * 0.5;

    final shader = program.fragmentShader();
    shader.setFloat(0, image.width.toDouble());
    shader.setFloat(1, image.height.toDouble());
    shader.setFloat(2, originTex.dx);
    shader.setFloat(3, originTex.dy);
    shader.setFloat(4, lensCx);
    shader.setFloat(5, lensCy);
    shader.setFloat(6, radiusPx);
    shader.setFloat(7, zoom);
    shader.setFloat(8, edgeSoftness);
    shader.setImageSampler(0, image);

    canvas.save();
    if (lensCoversLayer) {
      canvas.clipRect(Offset.zero & size, doAntiAlias: true);
    } else {
      final clipR = math.min(size.width, size.height) / 2;
      final clipCenter = Offset(size.width / 2, size.height / 2);
      final clipPath = ui.Path()
        ..addOval(Rect.fromCircle(center: clipCenter, radius: clipR));
      canvas.clipPath(clipPath, doAntiAlias: true);
    }
    canvas.drawRect(Offset.zero & size, Paint()..shader = shader);
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant _BackdropMagnifierPainter oldDelegate) =>
      oldDelegate.image != image ||
      oldDelegate.zoom != zoom ||
      oldDelegate.edgeSoftness != edgeSoftness ||
      oldDelegate.lensCoversLayer != lensCoversLayer ||
      oldDelegate.devicePixelRatio != devicePixelRatio;
}
