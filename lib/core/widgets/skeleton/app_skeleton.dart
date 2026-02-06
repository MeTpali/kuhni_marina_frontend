import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../constants/app_colors.dart';

class AppSkeleton extends StatelessWidget {
  final double? height;
  final double? width;
  final double? borderRadius;
  final Widget? child;
  const AppSkeleton({
    this.height,
    this.width,
    this.borderRadius,
    this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Shimmer.fromColors(
    baseColor: AppColors.base10,
    highlightColor: AppColors.base5,
    child: ClipRRect(
      borderRadius: borderRadius != null
          ? BorderRadius.circular(borderRadius!)
          : BorderRadius.zero,
      child:
          child ??
          ColoredBox(
            color: Colors.red,
            child: SizedBox(height: height, width: width),
          ),
    ),
  );
}
