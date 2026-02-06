import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_icons.dart';
import '../../parsers/icon_color_mapper.dart';
import '../buttons/app_icon_button.dart';
import '../buttons/main_button.dart';
import '../images/app_image.dart';
import '../types/bracing.dart';
import 'app_card.dart';

/// Карточка товара в каталоге
class MasterCard extends StatelessWidget {
  /// Высота карточки (включая метку новинка)
  final double? height;

  /// Ширина карточки (включая метку новинка)
  final double? width;

  /// Имя мастера
  final String name;

  /// Онлайн
  final bool isOnline;

  /// Описание
  final String description;

  /// Стоимость в очках праны
  final int prana;

  /// Длительность сеанса
  final int timing;

  /// Рейтинг мастера
  final double rating;

  /// Количество отзывов
  final int reviewsCount;

  /// URL картинки мастера
  final String url;

  /// Действие при нажатии на карточку (например, открытие деталей)
  final VoidCallback? onTap;

  /// Действие при нажатии на кнопку забронировать
  final bool isBooked;

  /// Действие при нажатии на кнопку забронировать
  final VoidCallback onBook;

  /// Флаг, является ли товар избранным
  final bool isFavorite;

  /// Callback для переключения состояния избранного
  final VoidCallback? onFavoriteToggle;

  const MasterCard({
    required this.name,
    required this.prana,
    required this.rating,
    required this.reviewsCount,
    required this.url,
    required this.description,
    required this.timing,
    required this.onBook,
    Key? key,
    this.height,
    this.width,
    this.isOnline = false,
    this.onTap,
    this.isBooked = false,
    this.isFavorite = false,
    this.onFavoriteToggle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: onTap,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: SizedBox(
        height: height,
        width: width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: AppImage(
                url: url,
                height: double.infinity,
                width: double.infinity,
                borderRadius: 0.0,
                backgroundColor: AppColors.fairway,
                child: Positioned.fill(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0, right: 6.0),
                        child: Row(
                          children: [
                            const Spacer(),
                            AppIconButton(
                              icon: SvgPicture.asset(
                                AppIcons.heart,
                                colorMapper: isFavorite
                                    ? const IconColorMapper.filled(
                                        color: Colors.red,
                                      )
                                    : const IconColorMapper.transparent(
                                        strokeColor: AppColors.brilliance,
                                      ),
                              ),
                              iconPadding: const EdgeInsets.all(8.0),
                              backgroundColor: AppColors.mediumPurple,
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      if (isOnline)
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 6.0,
                            left: 4.0,
                          ),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1000),
                              color: AppColors.brilliance,
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 8.0,
                                vertical: 6.0,
                              ),
                              child: Row(
                                spacing: 4,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CircleAvatar(
                                    radius: 4,
                                    backgroundColor: AppColors.formalGarden,
                                  ),
                                  Text(
                                    'Онлайн',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.carbonFiber,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      const DecoratedBox(
                        decoration: BoxDecoration(
                          color: AppColors.base0,
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(12.0),
                          ),
                        ),
                        child: SizedBox(height: 12, width: double.infinity),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            AppCard(
              bracingType: BracingType.top,
              contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(AppIcons.starSharp),
                      const SizedBox(width: 4),
                      Text(
                        rating.toString(),
                        style: const TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: AppColors.kettleman,
                        ),
                      ),

                      const SizedBox(width: 12),
                      SvgPicture.asset(AppIcons.message),
                      const SizedBox(width: 4),
                      Text(
                        _reviewString(reviewsCount),
                        style: const TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: AppColors.kettleman,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors.kettleman,
                    ),
                  ),
                  const SizedBox(height: 4),
                  SizedBox(
                    height: 31,
                    child: Text(
                      description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColors.squant,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 6.0,
                    children: [
                      _buildLabel(
                        Row(
                          spacing: 4.0,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              prana.toString(),
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: AppColors.fairway,
                              ),
                            ),
                            SvgPicture.asset(
                              AppIcons.prana,
                              colorMapper: const IconColorMapper.filled(
                                color: AppColors.fairway,
                              ),
                            ),
                          ],
                        ),
                      ),
                      _buildLabel(
                        Text(
                          '$timing мин',
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.fairway,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  MainButton(
                    child: const Text(
                      'Забронировать',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onPressed: onBook,
                    type: MainButtonType.primary,
                    starSize: 20,
                    height: 32,
                    contentPadding: const EdgeInsetsGeometry.symmetric(
                      vertical: 8.5,
                    ),
                    borderRadius: 6.0,
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget _buildLabel(Widget content) => DecoratedBox(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(1000),
      color: AppColors.windChill,
    ),
    child: SizedBox(
      height: 26,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Center(child: content),
      ),
    ),
  );

  String _reviewString(int reviewsCount) {
    if (reviewsCount == 1) return '$reviewsCount отзыв';

    if (reviewsCount == 2 || reviewsCount == 3 || reviewsCount == 4) {
      return '$reviewsCount отзыва';
    }

    return '$reviewsCount отзывов';
  }
}
