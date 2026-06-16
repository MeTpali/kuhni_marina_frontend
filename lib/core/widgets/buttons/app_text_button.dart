import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';

/// Текстовая кнопка: базовый вид задаётся [style], при наведении цвет — [AppColors.accent].
class AppTextButton extends StatefulWidget {
  const AppTextButton({
    required this.label,
    required this.style,
    this.onPressed,
    super.key,
  });

  final String label;
  final TextStyle style;
  final VoidCallback? onPressed;

  @override
  State<AppTextButton> createState() => _AppTextButtonState();
}

class _AppTextButtonState extends State<AppTextButton> {
  bool _hover = false;

  void _setHover(bool v) {
    if (_hover == v) return;
    setState(() => _hover = v);
  }

  @override
  Widget build(BuildContext context) {
    final baseColor = widget.style.color ?? AppColors.onSurface;
    final effectiveStyle = widget.style.copyWith(
      color: _hover ? AppColors.accent : baseColor,
    );

    return MouseRegion(
      onEnter: (_) => _setHover(true),
      onExit: (_) => _setHover(false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.onPressed,
        behavior: HitTestBehavior.opaque,
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 280),
          curve: Curves.easeOutCubic,
          style: effectiveStyle,
          child: Text(
            widget.label,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
