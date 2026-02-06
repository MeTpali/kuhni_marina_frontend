import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';

/// Скелет для карточки товара
class CardBase extends StatelessWidget {
  /// Высота карточки (включая [actions])
  final double? height;

  /// Ширина карточки (включая [actions])
  final double? width;

  /// Картинка продукта
  final Widget? image;

  /// Цена продукта
  final Widget? price;

  /// Артикул продукта
  final Widget? article;

  /// Название продукта
  final Widget? title;

  /// Рейтинг продукта
  final Widget? rating;

  /// Действие при нажатии на карточку продукта
  final VoidCallback? onTap;

  /// Главная кнопка карточки
  final Widget? button;

  /// Список виджетов, отображаемых в верхнем правом углу карточки продукта
  final List<Widget> actions;

  /// Отступ [actions]. На сколько [actions] выступают за края карточки
  final Offset actionsOffset;

  /// Скелет для карточки товара
  const CardBase({
    super.key,
    this.height,
    this.width,
    this.image,
    this.price,
    this.article,
    this.title,
    this.rating,
    this.onTap,
    this.button,
    this.actions = const <Widget>[],
    this.actionsOffset = Offset.zero,
  });

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: onTap,
        child: SizedBox(
          height: height,
          width: width,
          child: Stack(
            clipBehavior: Clip.none,
            fit: StackFit.passthrough,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(
                  0,
                  actionsOffset.dy > 0 ? actionsOffset.dy : 0,
                  actionsOffset.dx > 0 ? actionsOffset.dx : 0,
                  0,
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                  child: ColoredBox(
                    color: AppColors.base5,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 6.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2),
                            child: Center(child: image),
                          ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Column(
                                spacing: 4,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (price != null) price!,
                                  if (article != null) article!,
                                  if (title != null) title!,
                                  if (rating != null) rating!,
                                ],
                              ),
                            ),
                          ),
                          if (button != null) button!,
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                    0,
                    actionsOffset.dy < 0 ? actionsOffset.dy.abs() : 0,
                    actionsOffset.dx < 0 ? actionsOffset.dx.abs() : 0,
                    0,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: actions,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
