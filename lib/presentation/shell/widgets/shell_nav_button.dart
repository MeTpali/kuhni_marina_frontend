import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/home_sizes.dart';
import '../../../core/constants/screen_size.dart';

/// Текстовая кнопка навигации app bar (uppercase, accent при hover/выборе).
class ShellNavButton extends StatefulWidget {
  const ShellNavButton({
    required this.label,
    required this.screenSize,
    required this.selected,
    required this.onPressed,
    this.padding,
    this.fontSize,
    this.showSelectedUnderline = false,
    this.underlineHeight,
    super.key,
  });

  final String label;
  final ScreenSize screenSize;
  final bool selected;
  final VoidCallback onPressed;
  final EdgeInsetsGeometry? padding;
  final double? fontSize;
  final bool showSelectedUnderline;
  final double? underlineHeight;

  @override
  State<ShellNavButton> createState() => _ShellNavButtonState();
}

class _ShellNavButtonState extends State<ShellNavButton> {
  static const double _underlineTopGap = 2;

  bool _hover = false;

  @override
  Widget build(BuildContext context) {
    final s = widget.screenSize;
    final color = widget.selected || _hover
        ? AppColors.accent
        : AppColors.onSurface;
    final base = Theme.of(context).textTheme.labelMedium ?? const TextStyle();
    final underlineH =
        widget.underlineHeight ?? s.homeAppBarUnderlineHeight;

    final button = TextButton(
      style: TextButton.styleFrom(
        foregroundColor: Colors.transparent,
        padding:
            widget.padding ??
            EdgeInsets.symmetric(horizontal: s.homeAppBarNavButtonPaddingH),
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        splashFactory: NoSplash.splashFactory,
      ).copyWith(overlayColor: WidgetStateProperty.all(Colors.transparent)),
      onPressed: widget.onPressed,
      child: AnimatedDefaultTextStyle(
        duration: const Duration(milliseconds: 220),
        curve: Curves.easeInOut,
        style: base.copyWith(
          color: color,
          fontSize: widget.fontSize ?? s.homeAppBarNavTextSize,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.6,
        ),
        child: Text(widget.label.toUpperCase()),
      ),
    );

    if (!widget.showSelectedUnderline) {
      return MouseRegion(
        onEnter: (_) => setState(() => _hover = true),
        onExit: (_) => setState(() => _hover = false),
        cursor: SystemMouseCursors.click,
        child: button,
      );
    }

    return MouseRegion(
      onEnter: (_) => setState(() => _hover = true),
      onExit: (_) => setState(() => _hover = false),
      cursor: SystemMouseCursors.click,
      child: IntrinsicWidth(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            button,
            SizedBox(height: _underlineTopGap),
            AnimatedOpacity(
              opacity: widget.selected ? 1 : 0,
              duration: const Duration(milliseconds: 160),
              curve: Curves.easeOutCubic,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 280),
                curve: Curves.easeOutCubic,
                height: underlineH,
                decoration: BoxDecoration(
                  color: AppColors.accent,
                  borderRadius: BorderRadius.circular(underlineH * 0.5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
