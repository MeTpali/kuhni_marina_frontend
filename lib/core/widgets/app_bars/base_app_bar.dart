import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_fonts.dart';
import '../../constants/app_icons.dart';
import '../buttons/app_icon_button.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
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

  /// Показать кнопку поиска
  final bool showSearchButton;

  /// Показать кнопку избранного
  final bool showFavouritesButton;

  /// Закруглять ли панель снизу
  final bool clipRRect;

  /// Виджет внизу панели
  final Widget? footer;

  /// Карусель виджетов внизу панели
  final List<Widget> footerList;

  /// Высота карусели виджетов
  final double footerHeight;

  /// Действие при возврате на предыдущую страницу
  final VoidCallback? onPop;

  /// Действие при нажатии на кнопку поиска
  final VoidCallback? onTapSearch;

  /// Действие при нажатии на кнопку избранного
  final VoidCallback? onTapFavourites;

  /// Верхняя панель
  const BaseAppBar({
    required this.title,
    required this.mediaQuery,
    this.showBackButton = true,
    this.showSearchButton = false,
    this.showFavouritesButton = false,
    this.clipRRect = true,
    this.footer,
    this.footerList = const <Widget>[],
    this.footerHeight = 32,
    this.onPop,
    this.onTapSearch,
    this.onTapFavourites,
    super.key,
  });

  @override
  Size get preferredSize => Size(
    mediaQuery.size.width,
    footerList.isEmpty && footer == null
        ? 64 + mediaQuery.padding.top
        : 78 + footerHeight + mediaQuery.padding.top,
  );

  @override
  Widget build(BuildContext context) => ClipRRect(
    clipBehavior: Clip.hardEdge,
    borderRadius: BorderRadius.vertical(
      bottom: clipRRect ? const Radius.circular(24) : Radius.zero,
    ),
    child: ColoredBox(
      color: AppColors.transparentBlue,
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          0,
          10 + MediaQuery.of(context).padding.top,
          0,
          14,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                children: [
                  if (showBackButton)
                    Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: SizedBox(
                        height: 32,
                        width: 32,
                        child: AppIconButton(
                          backgroundColor: Colors.transparent,
                          icon: SvgPicture.asset(
                            AppIcons.arrowBack,
                            colorFilter: const ColorFilter.mode(
                              AppColors.base100,
                              BlendMode.srcIn,
                            ),
                            height: 20,
                            width: 20,
                          ),
                          onPressed: () async {
                            onPop?.call();
                            await context.router.maybePop();
                          },
                        ),
                      ),
                    ),
                  Expanded(
                    child: Text(
                      title,
                      style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: AppColors.base100,
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        fontFamily: AppFonts.nyght,
                      ),
                    ),
                  ),
                  if (showSearchButton)
                    SizedBox(
                      height: 32,
                      width: 32,
                      child: AppIconButton(
                        backgroundColor: Colors.transparent,
                        icon: SvgPicture.asset(
                          AppIcons.book,
                          colorFilter: const ColorFilter.mode(
                            AppColors.base100,
                            BlendMode.srcIn,
                          ),
                          height: 24,
                          width: 24,
                        ),
                        onPressed: onTapSearch,
                      ),
                    ),
                  if (showFavouritesButton)
                    SizedBox(
                      height: 32,
                      width: 32,
                      child: AppIconButton(
                        backgroundColor: Colors.transparent,
                        icon: SvgPicture.asset(
                          AppIcons.chat,
                          colorFilter: const ColorFilter.mode(
                            AppColors.base60,
                            BlendMode.srcIn,
                          ),
                          height: 24,
                          width: 24,
                        ),
                        onPressed: onTapFavourites,
                      ),
                    ),
                ],
              ),
            ),
            if (footer != null)
              Padding(
                padding: const EdgeInsets.only(top: 14),
                child: SizedBox(height: footerHeight, child: footer),
              ),
            if (footerList.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 14),
                child: SizedBox(
                  height: footerHeight,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      const SizedBox(width: 14),
                      for (int i = 0; i < footerList.length; i++) ...[
                        footerList[i],
                        if (i < footerList.length - 1) const SizedBox(width: 8),
                      ],
                      const SizedBox(width: 14),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    ),
  );
}
