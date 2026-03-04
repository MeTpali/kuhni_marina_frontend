import 'package:flutter/material.dart';

/// Цветовая палитра дизайн-системы для элитных кухонь.
///
/// Семантика:
/// - [primary] / [primaryVariant] — основной бренд (благородный зелёный).
/// - [accent] / [accentLight] — акцент премиум (золото, латунь).
/// - [surface] / [background] — фон экранов и карточек.
/// - [onPrimary], [onSurface], [onSurfaceVariant] — текст и иконки на фоне.
/// - [outline] / [divider] — границы и разделители.
abstract class AppColors {
  // ---------------------------------------------------------------------------
  // Семантические цвета бренда
  // ---------------------------------------------------------------------------

  /// Основной цвет бренда (глубокий благородный зелёный).
  static const Color primary = Color(0xFF2B5240);

  /// Вариант основного (светлее, для hover/акцентов).
  static const Color primaryVariant = Color(0xFF369551);

  /// Светлый фон в зелёной гамме (подложки, бейджи).
  static const Color primaryContainer = Color(0xFFE8F5EB);

  /// Текст на [primary] и [primaryVariant].
  static const Color onPrimary = Color(0xFFFFFFFF);

  /// Текст на [primaryContainer].
  static const Color onPrimaryContainer = Color(0xFF1E2E23);

  /// Акцент премиум: золото / латунь.
  static const Color accent = Color(0xFFB8860B);

  /// Светлое золото (hover, подсветка).
  static const Color accentLight = Color(0xFFC9A962);

  /// Текст на [accent].
  static const Color onAccent = Color(0xFFFFFFFF);

  // ---------------------------------------------------------------------------
  // Нейтралы и поверхности (тёплые оттенки)
  // ---------------------------------------------------------------------------

  /// Чистый белый (иконки на тёмном, текст на primary).
  static const Color white = Color(0xFFFFFFFF);

  /// Тёплый белый / слоновая кость — основной фон экранов.
  static const Color background = Color(0xFFFAF9F7);

  /// Фон карточек, листов, модалок.
  static const Color surface = Color(0xFFFCFCFD);

  /// Приподнятая поверхность (карточки при hover, чипы).
  static const Color surfaceElevated = Color(0xFFF6F6F6);

  /// Текст основной (заголовки, параграфы).
  static const Color onSurface = Color(0xFF26292B);

  /// Текст вторичный (подписи, мета).
  static const Color onSurfaceVariant = Color(0xFF5D666C);

  /// Текст третичный (placeholder, disabled).
  static const Color onSurfaceTertiary = Color(0xFF919A9F);

  /// Границы полей, разделители.
  static const Color outline = Color(0xFFD9DCDE);

  /// Слабый разделитель (линии между элементами списка).
  static const Color divider = Color(0xFFE8E8E8);

  /// Ошибки и деструктивные действия.
  static const Color error = Color(0xFFB3261E);

  static const Color onError = Color(0xFFFFFFFF);

  // ---------------------------------------------------------------------------
  // Шкала нейтралов (тёплый серый) — для градиентов и тонкой настройки
  // ---------------------------------------------------------------------------

  static const Color neutral0 = Color(0xFFFFFFFF);
  static const Color neutral5 = Color(0xFFF7F8F8);
  static const Color neutral10 = Color(0xFFF0F1F2);
  static const Color neutral20 = Color(0xFFD9DCDE);
  static const Color neutral30 = Color(0xFFB8BDC1);
  static const Color neutral40 = Color(0xFF919A9F);
  static const Color neutral50 = Color(0xFF737D84);
  static const Color neutral60 = Color(0xFF5D666C);
  static const Color neutral70 = Color(0xFF4C5358);
  static const Color neutral80 = Color(0xFF41464B);
  static const Color neutral90 = Color(0xFF393D41);
  static const Color neutral100 = Color(0xFF26292B);
  static const Color neutralBlack = Color(0xFF161616);

  // ---------------------------------------------------------------------------
  // Обратная совместимость: алиасы для существующих виджетов
  // ---------------------------------------------------------------------------

  static const Color base0 = white;
  static const Color base5 = neutral5;
  static const Color base10 = neutral10;
  static const Color base20 = neutral20;
  static const Color base30 = neutral30;
  static const Color base40 = neutral40;
  static const Color base50 = neutral50;
  static const Color base60 = neutral60;
  static const Color base70 = neutral70;
  static const Color base80 = neutral80;
  static const Color base90 = neutral90;
  static const Color base100 = neutral100;

  static const Color brilliance = surface;
  static const Color carbonFiber = onSurface;
  static const Color kettleman = onSurfaceVariant;
  static const Color squant = onSurfaceTertiary;
  static const Color uniformGrey = onSurfaceTertiary;
  static const Color fairway = primaryVariant;
  static const Color formalGarden = primaryVariant;
  static const Color greenStain = primary;
  static const Color quartzite = onPrimaryContainer;
  static const Color astronomer = primaryContainer;
  static const Color silverLeaf = Color(0xFF9BBAA2);
  static const Color whiteEdgar = surfaceElevated;
  static const Color unicornSilver = outline;
  static const Color boysenberryShadow = Color(0xFFF2F2FA);
  static const Color drWhite = Color(0xFFFAFAFA);
  static const Color washMe = Color(0xFFFAFAFF);
  static const Color whitePerl = Color(0xFFFAFAFF);
  static const Color foundationWhite = Color(0xFFF0F0FF);
  static const Color cascadingWhite = surfaceElevated;
  static const Color crystalBell = Color(0xFFEFEFEF);
  static const Color windChill = primaryContainer;
  static const Color navyBlazer = Color(0xFF28303F);
  static const Color potBlack = neutralBlack;
  static const Color lacqueredLiquorice = Color(0xFF383838);
  static const Color blueGenie = Color(0xFF6666FF);
  static const Color transparentBlue = Color(0xFFD9D9FF);
  static const Color purpleIllusion = Color(0xFFBABAFB);
  static const Color coldLips = Color(0xFF9696EE);
  static const Color lightPeriwinkle = Color(0xFFC2C2FF);
  static const Color lavenderBlue = Color(0xFFCCCCFF);
  static const Color lavenderBlueShadow = Color(0xFF8F8FFF);
  static const Color nostalgiaPerfume = Color(0xFFD7D7F9);
  static const Color mediumPurple = Color(0xA4AEA7B2);
  static const Color artificialIntelligenceGrey = Color(0xFFA1A1A1);
  static const Color brilliantLiquorice = Color(0xFF545454);
  static const Color chorusOfElephants = Color(0xFF8C8A87);
  static const Color flagstone = Color(0xFFACACAC);
  static const Color industrialRevolution = Color(0xFF737373);
  static const Color kazakhstanYellow = Color(0xFFFFC709);
}
