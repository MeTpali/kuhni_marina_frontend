import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

/// Подложка блока на главной:
/// - [none] — без blur и без затенения;
/// - [glassLight] — светлое затенение (как у карточки) alpha 0.3 + blur 3;
/// - [glassHeavy] — то же, alpha 0.7 + blur 3.
enum HomeSectionBackdropStyle { none, glassLight, glassHeavy }

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

    final alpha = switch (style) {
      HomeSectionBackdropStyle.glassLight => 0.3,
      HomeSectionBackdropStyle.glassHeavy => 0.7,
      HomeSectionBackdropStyle.none => 0.0,
    };

    final tint = AppColors.white.withValues(alpha: alpha);

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
