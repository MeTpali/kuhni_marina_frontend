import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_fonts.dart';
import '../../constants/app_icons.dart';
import '../buttons/app_icon_button.dart';

class CatalogAppBar extends StatelessWidget implements PreferredSizeWidget {
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

  /// Действие при возврате на предыдущую страницу
  final VoidCallback? onPop;

  /// Закруглять ли панель снизу
  final bool showSortButton;

  /// Закруглять ли панель снизу
  final bool showFiltersButton;

  /// Действие при нажатии на кнопку сортировки
  final VoidCallback? onTapSort;

  /// Действие при нажатии на кнопку фильтров
  final VoidCallback? onTapFilters;

  /// Отступы контента панели
  final EdgeInsetsGeometry? contentPadding;

  /// Кастомный виджет в нижней части панели
  final double footerHeight;

  /// Лента виджетов в нижней части панели
  final List<Widget> footerList;

  /// Кастомный виджет в нижней части панели
  final Widget? footer;

  /// Верхняя панель
  const CatalogAppBar({
    required this.title,
    required this.mediaQuery,
    this.showBackButton = true,
    this.clipRRect = false,
    this.onPop,
    this.showSortButton = true,
    this.showFiltersButton = true,
    this.onTapSort,
    this.onTapFilters,
    this.contentPadding,
    this.footerHeight = 48,
    this.footerList = const <Widget>[],
    this.footer,
    super.key,
  });

  @override
  Size get preferredSize =>
      Size(mediaQuery.size.width, 146 + mediaQuery.padding.top);

  @override
  Widget build(BuildContext context) => ClipRRect(
    clipBehavior: Clip.hardEdge,
    borderRadius: BorderRadius.vertical(
      bottom: clipRRect ? const Radius.circular(24) : Radius.zero,
    ),
    child: ColoredBox(
      color: AppColors.base0,
      child: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: contentPadding ?? const EdgeInsets.all(14.0),
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
                        fontSize: 20,
                        fontFamily: AppFonts.nyght,
                      ),
                    ),
                  ),
                  if (showSortButton || showFiltersButton)
                    const SizedBox(width: 6),
                  if (showSortButton)
                    Padding(
                      padding: const EdgeInsets.only(right: 6.0),
                      child: AppIconButton(
                        backgroundColor: AppColors.astronomer,
                        icon: SvgPicture.asset(AppIcons.sort),
                        iconPadding: const EdgeInsets.all(8.0),
                        onPressed: onTapSort,
                      ),
                    ),
                  if (showFiltersButton)
                    AppIconButton(
                      backgroundColor: AppColors.astronomer,
                      icon: SvgPicture.asset(AppIcons.filters),
                      iconPadding: const EdgeInsets.all(8.0),
                      onPressed: onTapFilters,
                    ),
                ],
              ),
            ),

            if (footer != null) footer!,

            if (footer == null && footerList.isNotEmpty)
              SizedBox(
                height: 54,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.fromLTRB(14.0, 6.0, 14.0, 16.0),
                  itemCount: footerList.length,
                  itemBuilder: (_, index) => footerList[index],
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 8),
                ),
              ),
          ],
        ),
      ),
    ),
  );
}
