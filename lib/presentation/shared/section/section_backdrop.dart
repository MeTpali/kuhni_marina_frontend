import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

/// Подложка блока секции:
/// - [none] — без blur и без затенения;
/// - [glassLight] — светлое затенение alpha 0.3 + blur 3;
/// - [glassHeavy] — alpha 0.7 + blur 3;
/// - [glassDark] — тёмное полупрозрачное стекло alpha 0.38 + blur 3.
enum SectionBackdropStyle { none, glassLight, glassHeavy, glassDark }

class SectionBackdrop extends StatelessWidget {
  const SectionBackdrop({
    required this.style,
    required this.child,
    super.key,
  });

  final SectionBackdropStyle style;
  final Widget child;

  static const double _sectionBlurSigma = 3;

  @override
  Widget build(BuildContext context) {
    if (style == SectionBackdropStyle.none) return child;

    final tint = switch (style) {
      SectionBackdropStyle.glassLight =>
        AppColors.white.withValues(alpha: 0.3),
      SectionBackdropStyle.glassHeavy =>
        AppColors.white.withValues(alpha: 0.7),
      SectionBackdropStyle.glassDark =>
        AppColors.graphite.withValues(alpha: 0.38),
      SectionBackdropStyle.none => AppColors.white.withValues(alpha: 0),
    };

    return ClipRRect(
      borderRadius: BorderRadius.circular(0),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: _sectionBlurSigma,
          sigmaY: _sectionBlurSigma,
        ),
        child: ColoredBox(color: tint, child: child),
      ),
    );
  }
}
