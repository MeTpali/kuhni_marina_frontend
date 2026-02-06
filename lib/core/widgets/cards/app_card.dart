import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../types/bracing.dart';

extension BracingCardType on BracingType {
  BorderRadiusGeometry resolveCardBorder(double? radius) => switch (this) {
    BracingType.none => BorderRadius.all(Radius.circular(radius ?? 12)),
    BracingType.left => BorderRadius.horizontal(
      right: Radius.circular(radius ?? 12),
    ),
    BracingType.top => BorderRadius.vertical(
      bottom: Radius.circular(radius ?? 12),
    ),
    BracingType.right => BorderRadius.horizontal(
      left: Radius.circular(radius ?? 12),
    ),
    BracingType.bottom => BorderRadius.vertical(
      top: Radius.circular(radius ?? 12),
    ),
    BracingType.all => BorderRadius.zero,
  };
}

class AppCard extends StatelessWidget {
  final Widget? child;
  final EdgeInsetsGeometry? contentPadding;
  final VoidCallback? onTap;
  final Color color;
  final double? borderRadius;
  final BoxBorder? border;
  final BracingType bracingType;

  const AppCard({
    this.child,
    this.contentPadding,
    this.onTap,
    this.color = AppColors.brilliance,
    this.borderRadius,
    this.border,
    this.bracingType = BracingType.none,
    super.key,
  });

  const AppCard.defaultPadding({
    this.child,
    this.onTap,
    this.color = AppColors.brilliance,
    this.borderRadius,
    this.border,
    this.bracingType = BracingType.none,
    super.key,
  }) : contentPadding = const EdgeInsets.all(14.0);

  const AppCard.verticalPadding({
    this.child,
    this.onTap,
    this.color = AppColors.brilliance,
    this.borderRadius,
    this.border,
    this.bracingType = BracingType.none,
    super.key,
  }) : contentPadding = const EdgeInsets.symmetric(vertical: 14.0);

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: onTap,
    child: DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: bracingType.resolveCardBorder(borderRadius),
        color: color,
        border: border,
      ),
      child: Padding(padding: contentPadding ?? EdgeInsets.zero, child: child),
    ),
  );
}
