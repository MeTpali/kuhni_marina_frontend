import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  final TextStyle? style;
  final int trimLines;
  final Duration animationDuration;

  const ExpandableText({
    required this.text,
    this.style,
    this.trimLines = 3,
    this.animationDuration = const Duration(milliseconds: 250),
    super.key,
  });

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool _expanded = false;

  TextStyle get _effectiveStyle =>
      widget.style ??
      const TextStyle(fontSize: 16, height: 1.35, color: Colors.black);

  void _toggleExpanded() => setState(() => _expanded = !_expanded);

  @override
  Widget build(BuildContext context) => LayoutBuilder(
    builder: (context, constraints) {
      // доступная ширина для текста внутри Card
      final availableWidth = constraints.maxWidth;

      // Для проверки переполнения используем TextPainter с доступной шириной
      final tp = TextPainter(
        text: TextSpan(text: widget.text, style: _effectiveStyle),
        textDirection: TextDirection.ltr,
        maxLines: widget.trimLines,
      )..layout(maxWidth: availableWidth);

      final isOverflowing = tp.didExceedMaxLines;

      return AnimatedSize(
        duration: widget.animationDuration,
        curve: Curves.easeInOut,
        alignment: Alignment.topCenter,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Сам текст: maxLines зависит от флага _expanded
            Text(
              widget.text,
              style: _effectiveStyle,
              maxLines: _expanded ? null : widget.trimLines,
              overflow: _expanded
                  ? TextOverflow.visible
                  : TextOverflow.ellipsis,
            ),

            // Показываем кнопку ТОЛЬКО если есть переполнение
            if (isOverflowing) ...[
              const SizedBox(height: 8),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: _toggleExpanded,
                child: Text(
                  _expanded ? 'Скрыть' : 'Читать полностью',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.fairway,
                  ),
                ),
              ),
            ],
          ],
        ),
      );
    },
  );
}
