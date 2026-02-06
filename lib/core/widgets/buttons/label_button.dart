import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';

class LabelButton extends StatelessWidget {
  final String label;
  final bool isActive;
  final TextStyle? activeLabelStyle;
  final TextStyle? disabledLabelStyle;
  final double? spacing;
  final VoidCallback? onTap;
  final Widget? leading;
  final Widget? action;
  final EdgeInsetsGeometry contentPadding;
  final Color activeColor;
  final Color disabledColor;
  final bool showActiveBorder;
  final double elevation;
  final BorderSide? activeBorder;
  final double? height;
  final double? width;

  const LabelButton({
    required this.label,
    this.isActive = false,
    this.activeLabelStyle,
    this.disabledLabelStyle,
    this.spacing,
    this.onTap,
    this.leading,
    this.action,
    this.contentPadding = const EdgeInsets.symmetric(
      horizontal: 10.0,
      vertical: 8.0,
    ),
    this.activeColor = AppColors.fairway,
    this.disabledColor = AppColors.astronomer,
    this.showActiveBorder = true,
    this.elevation = 0.0,
    this.activeBorder,
    this.height,
    this.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) => SizedBox(
    height: height,
    width: width,
    child: FilledButton(
      onPressed: onTap,
      style: FilledButton.styleFrom(
        padding: contentPadding,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: const Size(0, 0),
        shadowColor: AppColors.quartzite.withAlpha(100),
        surfaceTintColor: Colors.transparent,
        backgroundColor: isActive ? activeColor : disabledColor,
        disabledBackgroundColor: isActive ? activeColor : disabledColor,
        overlayColor: Color.lerp(
          isActive ? activeColor : disabledColor,
          Colors.transparent,
          0.2,
        ),
        elevation: elevation,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: isActive && showActiveBorder
              ? activeBorder ?? const BorderSide(color: AppColors.blueGenie)
              : BorderSide.none,
        ),
      ),
      child: Row(
        spacing: spacing ?? 8,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (leading != null) leading!,
          Text(
            label,
            style:
                (isActive ? activeLabelStyle : disabledLabelStyle) ??
                TextStyle(
                  color: isActive ? AppColors.base0 : AppColors.fairway,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
          ),
          if (action != null) action!,
        ],
      ),
    ),
  );
}
