import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

/// Подложка блока на главной:
/// - [none] — без blur и без затенения;
/// - [glassLight] — светлое затенение (как у карточки) alpha 0.3 + blur 3;
/// - [glassHeavy] — то же, alpha 0.7 + blur 3;
/// - [glassDark] — тёмное полупрозрачное стекло alpha 0.38 + blur 3.
enum HomeSectionBackdropStyle { none, glassLight, glassHeavy, glassDark }

class HomeSectionBackdrop extends StatelessWidget {
  const HomeSectionBackdrop({
    required this.style,
    required this.child,
    super.key,
  });

  final HomeSectionBackdropStyle style;
  final Widget child;

  static const double _sectionBlurSigma = 3;

  @override
  Widget build(BuildContext context) {
    if (style == HomeSectionBackdropStyle.none) return child;

    final tint = switch (style) {
      HomeSectionBackdropStyle.glassLight =>
        AppColors.white.withValues(alpha: 0.3),
      HomeSectionBackdropStyle.glassHeavy =>
        AppColors.white.withValues(alpha: 0.7),
      HomeSectionBackdropStyle.glassDark =>
        AppColors.graphite.withValues(alpha: 0.38),
      HomeSectionBackdropStyle.none => AppColors.white.withValues(alpha: 0),
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
