import 'dart:math' as math;

import 'package:flutter/material.dart';

import 'breakpoints.dart';
import 'product_card_sizes.dart';
import 'screen_size.dart';

/// Размеры и типографика главной страницы в зависимости от [ScreenSize].
extension HomeSizes on ScreenSize {
  // --- Типографика (размеры шрифтов) ---

  /// Заголовок баннера, плейсхолдер баннера.
  double get headlineMediumSize => switch (this) {
    ScreenSize.compact => 30,
    ScreenSize.medium => 36,
    ScreenSize.expanded => 42,
  };

  /// Крупный заголовок секции главной (Кухни, Мебель, Акции) — по центру.
  double get sectionGroupTitleSize => switch (this) {
    ScreenSize.compact => 28,
    ScreenSize.medium => 36,
    ScreenSize.expanded => 44,
  };

  /// Заголовки блоков внутри секции, заголовок футера.
  double get headlineSmallSize => switch (this) {
    ScreenSize.compact => 25,
    ScreenSize.medium => 30,
    ScreenSize.expanded => 35,
  };

  /// Подзаголовок баннера, текст поиска.
  double get bodyLargeSize => switch (this) {
    ScreenSize.compact => 14,
    ScreenSize.medium => 16,
    ScreenSize.expanded => 17,
  };

  /// Основной текст футера, контакты.
  double get bodyMediumSize => switch (this) {
    ScreenSize.compact => 12,
    ScreenSize.medium => 14,
    ScreenSize.expanded => 15,
  };

  /// Подпись «Контакты» в футере.
  double get titleSmallSize => switch (this) {
    ScreenSize.compact => 12,
    ScreenSize.medium => 14,
    ScreenSize.expanded => 15,
  };

  /// Кнопка «Смотреть все», переключатель темы.
  double get labelLargeSize => switch (this) {
    ScreenSize.compact => 12,
    ScreenSize.medium => 14,
    ScreenSize.expanded => 15,
  };

  // --- Высота баннера ---

  /// Соотношение сторон промо-блоков на главной (баннеры, акции).
  static const double homePromoAspectRatio = 16 / 9;

  /// Макс. ширина карточки акции (Full HD) — на 2K/4K влезает больше карточек.
  static const double homeCampaignCardMaxWidth = 1920;

  /// Макс. ширина модального окна поиска (потолок для [homeSearchModalContentWidth]).
  static const double homeSearchModalMaxWidth = 720;

  /// Соотношение сторон превью проекта на главной (ширина : высота = 4 : 3).
  static const double homeProjectCardAspectRatio = 4 / 3;

  /// Доп. высота карусели портфолио под двухстрочное название.
  static const double homeProjectCarouselTextExtra = 144;

  /// Множитель ширины карточки проекта относительно базовой карточки товара.
  static const double homeProjectCardWidthMultiplier = 2.25;

  double get bannerHeight => switch (this) {
    ScreenSize.compact => 240,
    ScreenSize.medium => 320,
    ScreenSize.expanded => 380,
  };

  /// Скругление нижних углов секции баннера на главной.
  double get bannerBottomRadius => switch (this) {
    ScreenSize.compact => 12,
    ScreenSize.medium => 16,
    ScreenSize.expanded => 20,
  };

  /// Тень под секцией баннера ([Material.elevation]).
  double get bannerElevation => switch (this) {
    ScreenSize.compact => 6,
    ScreenSize.medium => 8,
    ScreenSize.expanded => 10,
  };

  /// Иконка стрелки «предыдущий / следующий» на баннере (десктоп, hover).
  double get bannerNavArrowSize => switch (this) {
    ScreenSize.compact => 28,
    ScreenSize.medium => 32,
    ScreenSize.expanded => 36,
  };

  // --- Иконки ---

  double get searchIconSize => switch (this) {
    ScreenSize.compact => 20,
    ScreenSize.medium => 22,
    ScreenSize.expanded => 24,
  };

  // --- Верхняя панель главной (логотип, меню, поиск) ---

  /// Высота строки панели (без учёта статус-бара).
  double get homeAppBarHeight => switch (this) {
    ScreenSize.compact => 46,
    ScreenSize.medium => 50,
    ScreenSize.expanded => 58,
  };

  /// Высота логотипа в панели.
  double get homeAppBarLogoHeight => switch (this) {
    ScreenSize.compact => 28,
    ScreenSize.medium => 32,
    ScreenSize.expanded => 36,
  };

  /// Текст пунктов меню в панели (только [ScreenSize.expanded]).
  double get homeAppBarNavTextSize => switch (this) {
    ScreenSize.compact => 13,
    ScreenSize.medium => 14,
    ScreenSize.expanded => 15,
  };

  /// Горизонтальный внутренний отступ у текстовой кнопки меню в панели
  /// (половина «промежутка» между соседними кнопками; +5 к прежним значениям).
  double get homeAppBarNavButtonPaddingH => switch (this) {
    ScreenSize.compact => 11,
    ScreenSize.medium => 13,
    ScreenSize.expanded => 15,
  };

  /// Вертикальный зазор между пунктами бокового меню.
  double get homeSideMenuNavItemSpacing => switch (this) {
    ScreenSize.compact => 16,
    ScreenSize.medium => 20,
    ScreenSize.expanded => 24,
  };

  /// Иконки поиска и бургер-меню в панели.
  double get homeAppBarActionIconSize => switch (this) {
    ScreenSize.compact => 18,
    ScreenSize.medium => 20,
    ScreenSize.expanded => 22,
  };

  /// Толщина подчёркивания активного пункта меню в панели.
  double get homeAppBarUnderlineHeight => switch (this) {
    ScreenSize.compact => 0.5,
    ScreenSize.medium => 1,
    ScreenSize.expanded => 1.5,
  };

  /// Сила размытия фона верхней панели (sigma для размытия заднего плана).
  double get homeAppBarBlurSigma => switch (this) {
    ScreenSize.compact => 8,
    ScreenSize.medium => 9,
    ScreenSize.expanded => 10,
  };

  /// Основная иконка переключателя темы (свет/луна).
  double get themeToggleIconSize => switch (this) {
    ScreenSize.compact => 22,
    ScreenSize.medium => 24,
    ScreenSize.expanded => 26,
  };

  /// Иконка «переключить» у переключателя темы.
  double get themeToggleIconSmallSize => switch (this) {
    ScreenSize.compact => 18,
    ScreenSize.medium => 20,
    ScreenSize.expanded => 22,
  };

  // --- Отступы главной ---

  /// Горизонтальный отступ блоков (вместо фиксированного AppSpacing.lg).
  double get horizontalPadding => switch (this) {
    ScreenSize.compact => 16,
    ScreenSize.medium => 24,
    ScreenSize.expanded => 32,
  };

  /// Вертикальный отступ между секциями.
  double get sectionSpacing => switch (this) {
    ScreenSize.compact => 24,
    ScreenSize.medium => 32,
    ScreenSize.expanded => 40,
  };

  /// Вертикальный отступ от краёв стеклянной подложки секции с карточками (сверху/снизу).
  double get sectionGlassBlockVerticalMargin => switch (this) {
    ScreenSize.compact => 48,
    ScreenSize.medium => 64,
    ScreenSize.expanded => 80,
  };

  /// Вертикальный отступ вокруг разделителя между секциями.
  double get sectionDividerPadding => switch (this) {
    ScreenSize.compact => 20,
    ScreenSize.medium => 28,
    ScreenSize.expanded => 36,
  };

  /// Отступ между заголовком секции и списком карточек.
  double get sectionTitleBottomSpacing => switch (this) {
    ScreenSize.compact => 24,
    ScreenSize.medium => 32,
    ScreenSize.expanded => 40,
  };

  /// Внутренний отступ баннера (заголовок от краёв).
  double get bannerPadding => switch (this) {
    ScreenSize.compact => 16,
    ScreenSize.medium => 24,
    ScreenSize.expanded => 32,
  };

  /// Внутренний отступ поисковой строки.
  EdgeInsets get searchBarPadding => switch (this) {
    ScreenSize.compact => const EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 1,
    ),
    ScreenSize.medium => const EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 2,
    ),
    ScreenSize.expanded => const EdgeInsets.symmetric(
      horizontal: 24,
      vertical: 3,
    ),
  };

  /// Внешняя высота [HomeSearchBar] со стеклянной карточкой (без hover-анимации).
  double get homeSearchBarOuterHeight {
    const glassVerticalPad = 12.8 * 2;
    final innerVertical = searchBarPadding.top + searchBarPadding.bottom;
    return glassVerticalPad + innerVertical + searchIconSize;
  }

  /// Ширина контента модального окна поиска.
  ///
  /// [ScreenSize.expanded]: [viewportWidth] − горизонтальные отступы.
  /// [ScreenSize.compact] / [ScreenSize.medium]: [Breakpoints.desktop] − отступы.
  /// Не шире [homeSearchModalMaxWidth] и доступной области экрана.
  double homeSearchModalContentWidth(double viewportWidth) {
    final inset = horizontalPadding * 2;
    final stageCap = switch (this) {
      ScreenSize.expanded => viewportWidth,
      ScreenSize.compact || ScreenSize.medium => Breakpoints.desktop,
    };
    final computed = math.min(stageCap - inset, homeSearchModalMaxWidth);
    return computed.clamp(0.0, viewportWidth - inset);
  }

  /// Внутренний отступ футера (вертикальный и горизонтальный).
  EdgeInsets get footerPadding => switch (this) {
    ScreenSize.compact => const EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 24,
    ),
    ScreenSize.medium => const EdgeInsets.symmetric(
      horizontal: 24,
      vertical: 32,
    ),
    ScreenSize.expanded => const EdgeInsets.symmetric(
      horizontal: 32,
      vertical: 40,
    ),
  };

  /// Отступ переключателя темы (padding кнопки).
  EdgeInsets get themeTogglePadding => switch (this) {
    ScreenSize.compact => const EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 12,
    ),
    ScreenSize.medium => const EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 14,
    ),
    ScreenSize.expanded => const EdgeInsets.symmetric(
      horizontal: 24,
      vertical: 16,
    ),
  };

  /// Ширина карточки проекта в блоке «Портфолио».
  double get homeProjectCardWidth =>
      productCardDefaultWidth * HomeSizes.homeProjectCardWidthMultiplier;

  /// Высота горизонтальной карусели портфолио (превью 4:3 + название).
  double get homeProjectCarouselHeight =>
      homeProjectCardWidth / HomeSizes.homeProjectCardAspectRatio +
      HomeSizes.homeProjectCarouselTextExtra;
}
