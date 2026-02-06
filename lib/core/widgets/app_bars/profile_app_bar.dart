import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_fonts.dart';
import '../../constants/app_icons.dart';
import '../../parsers/icon_color_mapper.dart';
import '../buttons/app_icon_button.dart';
import '../images/app_image.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// Заголовок страницы
  final String username;

  /// Очки праны
  final int prana;

  /// Url иконки профиля
  final String? imageUrl;

  /// Необходим для задания отступов.
  /// В обычном случае достаточно прокинуть
  /// ```
  /// MediaQuery.of(context)
  /// ```
  final MediaQueryData mediaQuery;

  /// Показать кнопку уведомлений
  final bool showNotificationsButton;

  /// Показать кнопку карты дня
  final bool showDayCardButton;

  /// Закруглять ли панель снизу
  final bool clipRRect;

  /// Действие при нажатии на имя пользователя
  final VoidCallback? onTapProfile;

  /// Действие при возврате на предыдущую страницу
  final VoidCallback? onPop;

  /// Действие при нажатии на кнопку поиска
  final VoidCallback? onTapNotifications;

  /// Действие при нажатии на кнопку избранного
  final VoidCallback? onTapDayCard;

  /// Верхняя панель
  const ProfileAppBar({
    required this.username,
    required this.mediaQuery,
    required this.prana,
    this.imageUrl,
    this.onTapProfile,
    this.showNotificationsButton = true,
    this.showDayCardButton = true,
    this.clipRRect = false,
    this.onPop,
    this.onTapNotifications,
    this.onTapDayCard,
    super.key,
  });

  @override
  Size get preferredSize =>
      Size(mediaQuery.size.width, 104 + mediaQuery.padding.top);

  @override
  Widget build(BuildContext context) => ClipRRect(
    clipBehavior: Clip.hardEdge,
    borderRadius: BorderRadius.vertical(
      bottom: clipRRect ? const Radius.circular(24) : Radius.zero,
    ),
    child: ColoredBox(
      color: AppColors.base0,
      child: SizedBox.fromSize(
        size: preferredSize,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                14,
                24 + MediaQuery.of(context).padding.top,
                14,
                20,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  AppImage(
                    url: imageUrl ?? '',
                    errorImage: _emptyImage(),
                    width: 60,
                    height: 60,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: onTapProfile,
                          child: Row(
                            spacing: 4,
                            children: [
                              Flexible(
                                child: Text(
                                  username,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.carbonFiber,
                                    fontFamily: AppFonts.nyght,
                                  ),
                                ),
                              ),
                              SvgPicture.asset(AppIcons.chevronRight),
                            ],
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(1000),
                          child: ColoredBox(
                            color: AppColors.fairway,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10.0,
                                vertical: 6.0,
                              ),
                              child: Row(
                                spacing: 6,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    prana.toString(),
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.base0,
                                    ),
                                  ),
                                  SvgPicture.asset(AppIcons.prana),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (showDayCardButton || showNotificationsButton)
                    const SizedBox(width: 6),
                  if (showDayCardButton)
                    Padding(
                      padding: const EdgeInsets.only(right: 6.0),
                      child: AppIconButton(
                        backgroundColor: AppColors.astronomer,
                        icon: SvgPicture.asset(AppIcons.card),
                        iconPadding: const EdgeInsets.all(11.0),
                        onPressed: onTapDayCard,
                      ),
                    ),
                  if (showNotificationsButton)
                    AppIconButton(
                      backgroundColor: AppColors.astronomer,
                      icon: SvgPicture.asset(AppIcons.notification),
                      iconPadding: const EdgeInsets.all(11.0),
                      onPressed: onTapNotifications,
                    ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 25 / 44 * MediaQuery.of(context).padding.top,
                ),
                child: SvgPicture.asset(
                  AppIcons.star3,
                  height: 41,
                  width: 30,
                  colorMapper: const IconColorMapper(
                    fillColor: AppColors.base0,
                    strokeColor: AppColors.greenStain,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 22 / 44 * MediaQuery.of(context).padding.top,
              right: -24,
              child: Transform.rotate(
                angle: 158 / 180 * pi,
                child: SvgPicture.asset(
                  AppIcons.star2,
                  height: 95,
                  width: 47,
                  colorMapper: const IconColorMapper(
                    fillColor: AppColors.base0,
                    strokeColor: AppColors.greenStain,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget _emptyImage() => const CircleAvatar(
    backgroundColor: Colors.transparent,
    radius: 30,
    child: Stack(
      children: [
        Positioned(
          top: 10,
          left: 18,
          child: CircleAvatar(backgroundColor: AppColors.blueGenie, radius: 12),
        ),
        Positioned(
          top: 40,
          left: -15,
          child: CircleAvatar(backgroundColor: AppColors.blueGenie, radius: 45),
        ),
      ],
    ),
  );
}
