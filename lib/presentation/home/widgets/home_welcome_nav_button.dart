import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

/// Текстовая кнопка навигации в приветственном блоке: цвет плавно меняется на красный.
class HomeWelcomeNavButton extends StatefulWidget {
  const HomeWelcomeNavButton({
    required this.label,
    required this.style,
    this.onPressed,
    this.width,
    super.key,
  });

  final String label;
  final TextStyle style;
  final VoidCallback? onPressed;
  final double? width;

  static const Duration _colorDuration = Duration(milliseconds: 280);
  static const Curve _colorCurve = Curves.easeOutCubic;

  @override
  State<HomeWelcomeNavButton> createState() => _HomeWelcomeNavButtonState();
}

class _HomeWelcomeNavButtonState extends State<HomeWelcomeNavButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _colorController;
  late final Animation<double> _colorT;

  @override
  void initState() {
    super.initState();
    _colorController = AnimationController(
      vsync: this,
      duration: HomeWelcomeNavButton._colorDuration,
    );
    _colorT = CurvedAnimation(
      parent: _colorController,
      curve: HomeWelcomeNavButton._colorCurve,
      reverseCurve: HomeWelcomeNavButton._colorCurve,
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
    final baseColor = widget.style.color ?? AppColors.white;

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
            return SizedBox(
              width: widget.width,
              child: Text(
                widget.label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: widget.style.copyWith(color: color),
              ),
            );
          },
        ),
      ),
    );
  }
}
