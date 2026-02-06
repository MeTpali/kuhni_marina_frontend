import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';

class MenuBlock extends StatelessWidget {
  final String title;
  final TextStyle? titleStyle;
  final int? titleMaxLines;
  final Widget? child;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry titlePadding;
  final Widget? action;
  const MenuBlock({
    required this.title,
    this.titleStyle,
    this.titleMaxLines,
    this.child,
    this.onTap,
    this.titlePadding = EdgeInsets.zero,
    this.action,
    super.key,
  });

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: onTap,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: titlePadding,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Text(
                  title,
                  maxLines: titleMaxLines,
                  style:
                      titleStyle ??
                      const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: AppColors.base100,
                      ),
                ),
              ),
              if (action != null) action!,
            ],
          ),
        ),
        child ?? const SizedBox.shrink(),
      ],
    ),
  );
}
