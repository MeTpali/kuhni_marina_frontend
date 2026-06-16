import 'package:flutter/material.dart';

/// Заголовок слева, контент справа; на узком экране — столбик по центру.
class HomeSectionSplitLayout extends StatelessWidget {
  const HomeSectionSplitLayout({
    required this.title,
    required this.body,
    required this.horizontalPadding,
    required this.columnGap,
    required this.sideBySide,
    this.contentMaxWidth = 1100,
    this.bodyMaxWidth = 640,
    super.key,
  });

  final Widget title;
  final Widget body;
  final double horizontalPadding;
  final double columnGap;
  final bool sideBySide;
  final double contentMaxWidth;
  final double bodyMaxWidth;

  @override
  Widget build(BuildContext context) {
    final layout = sideBySide
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(flex: 4, child: title),
              SizedBox(width: columnGap),
              Expanded(flex: 6, child: body),
            ],
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              title,
              SizedBox(height: columnGap),
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: bodyMaxWidth),
                child: body,
              ),
            ],
          );

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: contentMaxWidth),
          child: layout,
        ),
      ),
    );
  }
}
