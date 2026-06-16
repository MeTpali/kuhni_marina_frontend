import 'dart:ui' show ColorFilter, BlendMode;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_icons.dart';

/// Текстовая кнопка секции с иконкой-стрелкой; цвет плавно меняется на [AppColors.accent].
class HomeSectionMoreButton extends StatefulWidget {
  const HomeSectionMoreButton({
    required this.label,
    required this.style,
    this.onPressed,
    this.iconSize = 18,
    super.key,
  });

  final String label;
  final TextStyle style;
  final VoidCallback? onPressed;
  final double iconSize;

  static const Duration _colorDuration = Duration(milliseconds: 280);
  static const Curve _colorCurve = Curves.easeOutCubic;

  @override
  State<HomeSectionMoreButton> createState() => _HomeSectionMoreButtonState();
}

class _HomeSectionMoreButtonState extends State<HomeSectionMoreButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _colorController;
  late final Animation<double> _colorT;

  @override
  void initState() {
    super.initState();
    _colorController = AnimationController(
      vsync: this,
      duration: HomeSectionMoreButton._colorDuration,
    );
    _colorT = CurvedAnimation(
      parent: _colorController,
      curve: HomeSectionMoreButton._colorCurve,
      reverseCurve: HomeSectionMoreButton._colorCurve,
    );
  }

  @override
  void dispose() {
    _colorController.dispose();
    super.dispose();
  }

  void _setHovered(bool hovered) {
    if (hovered) {
      _colorController.forward();
    } else {
      _colorController.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    final baseColor = widget.style.color ?? AppColors.graphite;

    return MouseRegion(
      onEnter: (_) => _setHovered(true),
      onExit: (_) => _setHovered(false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.onPressed,
        behavior: HitTestBehavior.opaque,
        child: AnimatedBuilder(
          animation: _colorT,
          builder: (context, _) {
            final color = Color.lerp(
              baseColor,
              AppColors.accent,
              _colorT.value,
            )!;
            final effectiveStyle = widget.style.copyWith(color: color);

            return Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(widget.label, style: effectiveStyle),
                SizedBox(width: widget.style.fontSize != null ? 6 : 8),
                SvgPicture.asset(
                  AppIcons.arrowRightLucid,
                  width: widget.iconSize,
                  height: widget.iconSize,
                  colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
