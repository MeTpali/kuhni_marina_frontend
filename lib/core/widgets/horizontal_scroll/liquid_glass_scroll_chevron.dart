import 'dart:ui' show ImageFilter;

import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../liquid_glass/liquid_glass.dart';

/// Круглая стрелка скролла в стиле liquid glass: blur, [LiquidGlassTokens] wash и обводка.
/// Без анимации масштаба — только визуал кнопки.
class LiquidGlassScrollChevron extends StatelessWidget {
  const LiquidGlassScrollChevron({
    required this.icon,
    required this.iconSize,
    this.variant = LiquidGlassVariant.light,
    this.blurSigma = 4,
    this.iconPadding = const EdgeInsets.all(8),
    this.iconColor,
    super.key,
  });

  final IconData icon;
  final double iconSize;

  final LiquidGlassVariant variant;
  final double blurSigma;

  /// Внутренний отступ вокруг иконки (диаметр круга ≈ iconSize + это * 2).
  final EdgeInsets iconPadding;

  /// По умолчанию — контрастный тёмный для светлого стекла.
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    final effectiveIconColor = iconColor ?? AppColors.graphite;

    return ClipOval(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blurSigma, sigmaY: blurSigma),
        child: DecoratedBox(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: LiquidGlassTokens.variantMonotoneWash(variant),
            border: Border.all(
              color: LiquidGlassTokens.variantBorderColor(variant),
              width: 1.5,
            ),
          ),
          child: Padding(
            padding: iconPadding,
            child: Icon(icon, size: iconSize, color: effectiveIconColor),
          ),
        ),
      ),
    );
  }
}
