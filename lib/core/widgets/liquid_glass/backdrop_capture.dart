import 'dart:async';
import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';

import 'widgets/backdrop_displace_layer.dart';
import 'widgets/backdrop_magnifier_layer.dart';

/// Периодический снимок поддерева в [ui.Image] для шейдеров «стекла» и лупы.
///
/// Используется вместе с [BackdropDisplaceLayer], [BackdropMagnifierLayer] и
/// виджетом `LiquidGlassCardAdvanced` (`liquid_glass_card.dart`):
/// один [GlobalKey] на [RepaintBoundary] с **фоном**
/// (без оверлеев карточек), общий [ValueListenable] с последним кадром.
///
/// ## Поведение
///
/// * Первый захват — после первого кадра ([WidgetsBinding.addPostFrameCallback]).
/// * Далее — по [Ticker] не чаще, чем раз в [interval].
/// * [toImage](https://api.flutter.dev/flutter/rendering/RenderRepaintBoundary/toImage.html)
///   вызывается с [MediaQuery.devicePixelRatioOf] этого виджета.
/// * При успешной замене снимка предыдущий [ui.Image] **dispose**'ится.
///
/// ## Жизненный цикл
///
/// Владелец страницы обычно держит `final snapshot = ValueNotifier<ui.Image?>(null)`
/// и в [State.dispose] вызывает `snapshot.value?.dispose(); snapshot.dispose();`.
///
/// Обзор пайплайна: `README.md` и `doc/backdrop_shader_guide.md` в корне репозитория.
///
/// См. также:
/// * [BackdropDisplaceLayer] — слой displacement по снимку;
/// * [BackdropMagnifierLayer] — круглая лупа по тому же снимку.
class BackdropRepaintCapture extends StatefulWidget {
  const BackdropRepaintCapture({
    required this.boundaryKey,
    required this.snapshot,
    required this.child,
    this.interval = const Duration(milliseconds: 40),
    super.key,
  });

  /// Тот же ключ, что у внутреннего [RepaintBoundary] — по нему берётся снимок.
  final GlobalKey boundaryKey;

  /// Последний кадр снимка; при смене старый [ui.Image] освобождается виджетом.
  final ValueNotifier<ui.Image?> snapshot;

  /// Поддерево **только** фона (без карточек поверх), иначе они попадут в текстуру.
  final Widget child;

  /// Минимальный интервал между вызовами [RenderRepaintBoundary.toImage].
  final Duration interval;

  @override
  State<BackdropRepaintCapture> createState() => _BackdropRepaintCaptureState();
}

class _BackdropRepaintCaptureState extends State<BackdropRepaintCapture>
    with SingleTickerProviderStateMixin {
  Ticker? _ticker;
  Duration _last = Duration.zero;
  bool _inFlight = false;
  int _token = 0;
  bool _firstCapture = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) unawaited(_capture());
    });
    _ticker = createTicker(_onTick);
    unawaited(_ticker?.start());
  }

  void _onTick(Duration elapsed) {
    if (!_firstCapture && elapsed - _last < widget.interval) return;
    _firstCapture = false;
    _last = elapsed;
    unawaited(_capture());
  }

  Future<void> _capture() async {
    if (!mounted || _inFlight) return;
    final boundary =
        widget.boundaryKey.currentContext?.findRenderObject()
            as RenderRepaintBoundary?;
    if (boundary == null) return;

    _inFlight = true;
    final token = ++_token;
    final dpr = MediaQuery.devicePixelRatioOf(context);

    try {
      final image = await boundary.toImage(pixelRatio: dpr);
      if (!mounted || token != _token) {
        image.dispose();
        return;
      }
      final previous = widget.snapshot.value;
      widget.snapshot.value = image;
      previous?.dispose();
    } on Exception catch (_) {
      // ignore: сеть/текстура недоступна
    } finally {
      _inFlight = false;
    }
  }

  @override
  void dispose() {
    _ticker?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) =>
      RepaintBoundary(key: widget.boundaryKey, child: widget.child);
}
