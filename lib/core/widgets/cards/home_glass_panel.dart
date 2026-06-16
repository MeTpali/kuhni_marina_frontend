import 'dart:ui';

import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/home_sizes.dart';
import '../../constants/screen_size.dart';

/// Стеклянная подложка в стиле [HomeGlassCard]: blur, белый 0.2 и обводка,
/// без скругления и карточных отступов — для боковых панелей на весь экран.
class HomeGlassPanel extends StatelessWidget {
  const HomeGlassPanel({
    required this.child,
    this.border,
    super.key,
  });

  final Widget child;
  final BoxBorder? border;

  /// Обводка панели, выезжающей справа (слева, сверху и снизу).
  static Border sideSheetBorderFromRight() {
    final side = BorderSide(color: AppColors.outline, width: 1.5);
    return Border(left: side, top: side, bottom: side);
  }

  @override
  Widget build(BuildContext context) {
    final s = context.screenSize;

    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: s.homeAppBarBlurSigma,
          sigmaY: s.homeAppBarBlurSigma,
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.2),
            border: border,
          ),
          child: child,
        ),
      ),
    );
  }
}
