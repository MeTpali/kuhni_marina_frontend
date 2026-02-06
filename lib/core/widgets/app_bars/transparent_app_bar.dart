import 'package:flutter/material.dart';

class TransparentAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// Необходим для задания отступов.
  /// В обычном случае достаточно прокинуть
  /// ```
  /// MediaQuery.of(context)
  /// ```
  final MediaQueryData mediaQuery;

  /// Высота контента панели без учёта [contentPadding]
  final double contentHeight;

  /// Отступы контента панели
  final EdgeInsetsGeometry contentPadding;

  /// Контент панели
  final Widget child;

  /// Верхняя панель
  const TransparentAppBar({
    required this.mediaQuery,
    required this.child,
    this.contentHeight = 42.0,
    this.contentPadding = const EdgeInsets.symmetric(
      horizontal: 14.0,
      vertical: 12.0,
    ),
    super.key,
  });

  @override
  Size get preferredSize => Size(
    mediaQuery.size.width,
    contentHeight + contentPadding.vertical + mediaQuery.padding.top,
  );

  @override
  Widget build(BuildContext context) => Padding(
    padding: contentPadding.add(EdgeInsets.only(top: mediaQuery.padding.top)),
    child: child,
  );
}
