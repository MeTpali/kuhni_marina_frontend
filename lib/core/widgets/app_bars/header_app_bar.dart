import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_fonts.dart';
import '../../constants/app_icons.dart';
import '../buttons/app_icon_button.dart';

class HeaderAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// Заголовок страницы
  final String header;

  /// Подпись под заголовком
  final String caption;

  /// Необходим для задания отступов.
  /// В обычном случае достаточно прокинуть
  /// ```
  /// MediaQuery.of(context)
  /// ```
  final MediaQueryData mediaQuery;

  /// Показать кнопку назад
  final bool showBackButton;

  /// Показывать ли разделитель между панелью и контентом
  final bool showDivider;

  /// Закруглять ли панель снизу
  final bool clipRRect;

  /// Действие при возврате на предыдущую страницу
  final VoidCallback? onPop;

  /// Отступы контента панели
  final EdgeInsetsGeometry? contentPadding;

  /// Верхняя панель
  const HeaderAppBar({
    required this.header,
    required this.caption,
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
  Widget build(BuildContext context) => ClipRRect(
    clipBehavior: Clip.hardEdge,
    borderRadius: BorderRadius.vertical(
      bottom: clipRRect ? const Radius.circular(24) : Radius.zero,
    ),
    child: DecoratedBox(
      decoration: BoxDecoration(
        color: AppColors.base0,
        border: showDivider
            ? const Border(bottom: BorderSide(color: AppColors.unicornSilver))
            : null,
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          0,
          14 + MediaQuery.of(context).padding.top,
          0,
          18,
        ),
        child: Padding(
          padding: contentPadding ?? const EdgeInsets.symmetric(horizontal: 14),
          child: Row(
            spacing: 8,
            children: [
              if (showBackButton)
                Padding(
                  padding: const EdgeInsets.only(right: 6.0),
                  child: SizedBox(
                    height: 32,
                    width: 32,
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
                ),
              Expanded(
                child: Column(
                  spacing: 4,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      header,
                      style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: AppColors.carbonFiber,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        fontFamily: AppFonts.nyght,
                      ),
                    ),
                    Text(
                      caption,
                      style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: AppColors.uniformGrey,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              if (showBackButton) const SizedBox(width: 32),
            ],
          ),
        ),
      ),
    ),
  );
}
