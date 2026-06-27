import 'dart:async';

import 'package:flutter/material.dart';

import '../../../core/constants/app_images.dart';

/// Анимированный фон главной: слайдшоу с zoom-эффектом.
class HomeAnimatedBackground extends StatefulWidget {
  const HomeAnimatedBackground({required this.urls, super.key});

  final List<String> urls;

  @override
  State<HomeAnimatedBackground> createState() => _HomeAnimatedBackgroundState();
}

class _HomeAnimatedBackgroundState extends State<HomeAnimatedBackground> {
  static const _switchDuration = Duration(milliseconds: 1200);
  static const _slideInterval = Duration(milliseconds: 7200);
  static const _zoomDuration = Duration(milliseconds: 7200);
  static const _zoomStart = 1.0;
  static const _zoomEnd = 1.16;

  Timer? _timer;
  int _index = 0;

  @override
  void initState() {
    super.initState();
    _startLoop();
  }

  @override
  void didUpdateWidget(covariant HomeAnimatedBackground oldWidget) {
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
