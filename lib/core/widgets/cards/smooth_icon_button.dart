import 'dart:ui' show ImageFilter;

import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_spacing.dart';
import '../../constants/home_sizes.dart';
import '../../constants/screen_size.dart';

/// Круглая стеклянная кнопка-иконка (blur, обводка, hover → accent).
class SmoothIconButton extends StatefulWidget {
  const SmoothIconButton({
    required this.screenSize,
    required this.icon,
    this.onTap,
    this.selected = false,
    this.iconSize = 22,
    this.diameter,
    this.hitPadding = kHitPadding,
    super.key,
  });

  static const double kDiameter = 44;

  /// Прозрачная зона вокруг круга для hit-test.
  static const EdgeInsets kHitPadding = EdgeInsets.all(AppSpacing.sm);

  final ScreenSize screenSize;
  final IconData icon;
  final VoidCallback? onTap;
  final bool selected;
  final double iconSize;
  final double? diameter;
  final EdgeInsetsGeometry hitPadding;

  @override
  State<SmoothIconButton> createState() => _SmoothIconButtonState();
}

class _SmoothIconButtonState extends State<SmoothIconButton> {
  bool _hover = false;

  Color get _iconColor {
    if (widget.selected) return AppColors.accent;
    return _hover ? AppColors.accent : AppColors.onSurface;
  }

  @override
  Widget build(BuildContext context) {
    final s = widget.screenSize;
    final buttonDiameter = widget.diameter ?? SmoothIconButton.kDiameter;

    return MouseRegion(
      onEnter: (_) => setState(() => _hover = true),
      onExit: (_) => setState(() => _hover = false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: widget.onTap,
        child: Padding(
          padding: widget.hitPadding,
          child: SizedBox(
            width: buttonDiameter,
            height: buttonDiameter,
            child: ClipOval(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: s.homeAppBarBlurSigma,
                  sigmaY: s.homeAppBarBlurSigma,
                ),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withValues(alpha: 0.2),
                    border: Border.all(color: AppColors.outline, width: 1.5),
                  ),
                  child: Center(
                    child: Icon(
                      widget.icon,
                      size: widget.iconSize,
                      color: _iconColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
