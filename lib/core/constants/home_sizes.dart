import 'package:flutter/material.dart';

import 'screen_size.dart';

/// Размеры и типографика главной страницы в зависимости от [ScreenSize].
extension HomeSizes on ScreenSize {
  // --- Типографика (размеры шрифтов) ---

  /// Заголовок баннера, плейсхолдер баннера.
  double get headlineMediumSize => switch (this) {
    ScreenSize.compact => 20,
    ScreenSize.medium => 24,
    ScreenSize.expanded => 28,
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

  double get bannerHeight => switch (this) {
    ScreenSize.compact => 240,
    ScreenSize.medium => 320,
    ScreenSize.expanded => 380,
  };

  /// Высота баннера акции в блоке акций на главной.
  double get campaignBannerHeight => switch (this) {
    ScreenSize.compact => 140,
    ScreenSize.medium => 180,
    ScreenSize.expanded => 220,
  };

  /// Размер точки индикатора баннеров.
  double get bannerDotSize => switch (this) {
    ScreenSize.compact => 6,
    ScreenSize.medium => 8,
    ScreenSize.expanded => 10,
  };

  /// Расстояние между точками индикатора баннеров.
  double get bannerDotSpacing => switch (this) {
    ScreenSize.compact => 6,
    ScreenSize.medium => 8,
    ScreenSize.expanded => 10,
  };

  /// Отступ снизу от баннера до точек индикатора.
  double get bannerDotsBottomPadding => switch (this) {
    ScreenSize.compact => 8,
    ScreenSize.medium => 10,
    ScreenSize.expanded => 12,
  };

  // --- Иконки ---

  double get searchIconSize => switch (this) {
    ScreenSize.compact => 20,
    ScreenSize.medium => 22,
    ScreenSize.expanded => 24,
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

  /// Горизонтальный отступ блоков (вместо фиксированного [AppSpacing.lg]).
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

  /// Вертикальный отступ вокруг разделителя между секциями.
  double get sectionDividerPadding => switch (this) {
    ScreenSize.compact => 20,
    ScreenSize.medium => 28,
    ScreenSize.expanded => 36,
  };

  /// Отступ между заголовком секции и списком карточек.
  double get sectionTitleBottomSpacing => switch (this) {
    ScreenSize.compact => 12,
    ScreenSize.medium => 16,
    ScreenSize.expanded => 20,
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
}
