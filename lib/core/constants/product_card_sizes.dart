import 'package:flutter/material.dart';

import '../widgets/cards/catalog_card.dart';
import '../widgets/cards/product_card.dart';
import 'screen_size.dart';

/// Размеры для [ProductCard] и [CatalogCard] в зависимости от [ScreenSize].
extension ProductCardSizes on ScreenSize {
  /// Скругление карточки
  double get cardBorderRadius => switch (this) {
    ScreenSize.compact => 10,
    ScreenSize.medium => 12,
    ScreenSize.expanded => 14,
  };

  /// Отступ снизу области меток (новинка, хит, скидка)
  double get labelsPaddingBottom => switch (this) {
    ScreenSize.compact => 4,
    ScreenSize.medium => 6,
    ScreenSize.expanded => 8,
  };

  /// Расстояние между метками
  double get labelsSpacing => switch (this) {
    ScreenSize.compact => 4,
    ScreenSize.medium => 5,
    ScreenSize.expanded => 6,
  };

  /// Внутренние отступы контента карточки (LTRB)
  EdgeInsets get contentPadding => switch (this) {
    ScreenSize.compact => const EdgeInsets.fromLTRB(6, 2, 6, 6),
    ScreenSize.medium => const EdgeInsets.fromLTRB(8, 2, 8, 8),
    ScreenSize.expanded => const EdgeInsets.fromLTRB(10, 4, 10, 10),
  };

  /// Размер точки индикатора слайдов
  double get dotSize => switch (this) {
    ScreenSize.compact => 3,
    ScreenSize.medium => 4,
    ScreenSize.expanded => 5,
  };

  /// Расстояние между точками по горизонтали
  double get dotSpacing => switch (this) {
    ScreenSize.compact => 2,
    ScreenSize.medium => 3,
    ScreenSize.expanded => 4,
  };

  /// Расстояние между рядами точек
  double get dotRunSpacing => switch (this) {
    ScreenSize.compact => 4,
    ScreenSize.medium => 4,
    ScreenSize.expanded => 6,
  };

  /// Отступ между точками и контентом
  double get dotsBottomGap => switch (this) {
    ScreenSize.compact => 2,
    ScreenSize.medium => 2,
    ScreenSize.expanded => 4,
  };

  /// Расстояние между блоками в колонке (цена, инфо, статистика)
  double get columnSpacing => switch (this) {
    ScreenSize.compact => 6,
    ScreenSize.medium => 8,
    ScreenSize.expanded => 10,
  };

  /// Размер шрифта цены (основной)
  double get priceFontSize => switch (this) {
    ScreenSize.compact => 12,
    ScreenSize.medium => 14,
    ScreenSize.expanded => 16,
  };

  /// Размер шрифта зачёркнутой цены
  double get priceStrikethroughFontSize => switch (this) {
    ScreenSize.compact => 8,
    ScreenSize.medium => 9,
    ScreenSize.expanded => 10,
  };

  /// Расстояние между ценой и зачёркнутой ценой
  double get priceGap => switch (this) {
    ScreenSize.compact => 4,
    ScreenSize.medium => 4,
    ScreenSize.expanded => 6,
  };

  /// Размер шрифта категории
  double get categoryFontSize => switch (this) {
    ScreenSize.compact => 7,
    ScreenSize.medium => 8,
    ScreenSize.expanded => 10,
  };

  /// Размер шрифта названия
  double get nameFontSize => switch (this) {
    ScreenSize.compact => 11,
    ScreenSize.medium => 12,
    ScreenSize.expanded => 14,
  };

  /// Высота блока названия (2 строки)
  double get nameHeight => switch (this) {
    ScreenSize.compact => 30,
    ScreenSize.medium => 34,
    ScreenSize.expanded => 40,
  };

  /// Расстояние между категорией и названием
  double get nameCategorySpacing => switch (this) {
    ScreenSize.compact => 4,
    ScreenSize.medium => 4,
    ScreenSize.expanded => 6,
  };

  /// Размер иконок в блоке статистики
  double get statsIconSize => switch (this) {
    ScreenSize.compact => 12,
    ScreenSize.medium => 14,
    ScreenSize.expanded => 16,
  };

  /// Размер шрифта в блоке статистики
  double get statsFontSize => switch (this) {
    ScreenSize.compact => 9,
    ScreenSize.medium => 10,
    ScreenSize.expanded => 12,
  };

  /// Расстояние после рейтинга (до иконки отзывов)
  double get statsGap1 => switch (this) {
    ScreenSize.compact => 6,
    ScreenSize.medium => 8,
    ScreenSize.expanded => 10,
  };

  /// Расстояние после иконки отзывов (до текста)
  double get statsGap2 => switch (this) {
    ScreenSize.compact => 4,
    ScreenSize.medium => 4,
    ScreenSize.expanded => 6,
  };

  /// Горизонтальный отступ метки на карточке
  double get labelPaddingHorizontal => switch (this) {
    ScreenSize.compact => 3,
    ScreenSize.medium => 4,
    ScreenSize.expanded => 5,
  };

  /// Вертикальный отступ метки на карточке
  double get labelPaddingVertical => switch (this) {
    ScreenSize.compact => 2,
    ScreenSize.medium => 2.5,
    ScreenSize.expanded => 3,
  };

  /// Размер шрифта метки на карточке
  double get labelFontSize => switch (this) {
    ScreenSize.compact => 10,
    ScreenSize.medium => 11,
    ScreenSize.expanded => 12,
  };

  /// Высота [ProductCard] по умолчанию (соотношение ширины к высоте 150:200).
  double get productCardDefaultHeight => switch (this) {
    ScreenSize.compact => 240,
    ScreenSize.medium => 303,
    ScreenSize.expanded => 380,
  };

  /// Высота [CatalogCard] по умолчанию (соотношение 150:230).
  double get catalogCardDefaultHeight => switch (this) {
    ScreenSize.compact => 270,
    ScreenSize.medium => 350,
    ScreenSize.expanded => 440,
  };

  /// Ширина [ProductCard] от высоты (150:200).
  double productCardWidthFromHeight(double height) => height * 150 / 250;

  /// Ширина [CatalogCard] от высоты (150:230).
  double catalogCardWidthFromHeight(double height) => height * 150 / 300;

  /// Ширина [ProductCard] по умолчанию (для скелетонов и отступов).
  double get productCardDefaultWidth =>
      productCardWidthFromHeight(productCardDefaultHeight);

  /// Скругление метки (CardLabel)
  double get labelBorderRadius => switch (this) {
    ScreenSize.compact => 4,
    ScreenSize.medium => 4,
    ScreenSize.expanded => 5,
  };

  /// Отступ контента кнопки в [CatalogCard]
  double get buttonContentPadding => switch (this) {
    ScreenSize.compact => 12,
    ScreenSize.medium => 14,
    ScreenSize.expanded => 16,
  };
}
