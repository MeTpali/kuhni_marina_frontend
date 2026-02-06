import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_fonts.dart';
import '../../constants/app_icons.dart';
import '../buttons/app_icon_button.dart';

class SimpleAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// Заголовок страницы
  final String title;

  /// Необходим для задания отступов.
  /// В обычном случае достаточно прокинуть
  /// ```
  /// MediaQuery.of(context)
  /// ```
  final MediaQueryData mediaQuery;

  /// Показать кнопку назад
  final bool showBackButton;

  /// Закруглять ли панель снизу
  final bool clipRRect;

  /// Показывать ли разделитель между панелью и контентом
  final bool showDivider;

  /// Действие при возврате на предыдущую страницу
  final VoidCallback? onPop;

  /// Отступы контента панели
  final EdgeInsetsGeometry? contentPadding;

  /// Верхняя панель
  const SimpleAppBar({
    required this.title,
    required this.mediaQuery,
    this.showBackButton = true,
    this.clipRRect = false,
    this.showDivider = false,
    this.onPop,
    this.contentPadding,
    super.key,
  });

  @override
  Size get preferredSize =>
      Size(mediaQuery.size.width, 70 + mediaQuery.padding.top);

  @override
  Widget build(BuildContext context) => DecoratedBox(
    decoration: BoxDecoration(
      color: AppColors.base0,
      borderRadius: BorderRadius.vertical(
        bottom: clipRRect ? const Radius.circular(24) : Radius.zero,
      ),
      border: showDivider
          ? const Border(bottom: BorderSide(color: AppColors.unicornSilver))
          : null,
    ),
    child: Padding(
      padding: EdgeInsets.fromLTRB(
        14,
        14 + MediaQuery.of(context).padding.top,
        14,
        18,
      ),
      child: Row(
        children: [
          if (showBackButton)
            Padding(
              padding: const EdgeInsets.only(right: 6.0),
              child: AppIconButton(
                icon: SvgPicture.asset(
                  AppIcons.chevronLeft,
                  colorFilter: const ColorFilter.mode(
                    AppColors.base100,
                    BlendMode.srcIn,
                  ),
                ),
                onPressed: () async {
                  onPop?.call();
                  await context.router.maybePop();
                },
              ),
            ),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                overflow: TextOverflow.ellipsis,
                color: AppColors.carbonFiber,
                fontWeight: FontWeight.w500,
                fontSize: 24,
                fontFamily: AppFonts.nyght,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
