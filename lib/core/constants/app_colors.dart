import 'package:flutter/material.dart';

// ---------------------------------------------------------------------------
// Светлая тема (бежевый фон, тёплый бренд)
// ---------------------------------------------------------------------------

abstract class AppColorsLight {
  AppColorsLight._();

  // Основной (тёмно-коричневый)
  static const Color primary = Color(0xFF5A3E2B);
  static const Color primaryVariant = Color(0xFF6B4A34);
  static const Color primaryContainer = Color(0xFFE9E1D5);
  static const Color onPrimary = Color(0xFFFFFFFF);
  static const Color onPrimaryContainer = Color(0xFF3E2A1F);

  // Акцент (оранжевый)
  static const Color accent = Color(0xFFE86F1E);
  static const Color accentLight = Color(0xFFF08A4B);
  static const Color onAccent = Color(0xFFFFFFFF);

  // Фоны
  static const Color background = Color(0xFFFAF7F2);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color surfaceElevated = Color(0xFFF3ECE3);

  // Текст
  static const Color onSurface = Color(0xFF2E2E2E);
  static const Color onSurfaceVariant = Color(0xFF6B6B6B);
  static const Color onSurfaceTertiary = Color(0xFF9A9A9A);

  // Разделители
  static const Color outline = Color(0xFFE0D8CC);
  static const Color divider = Color(0xFFE8E1D8);

  // Ошибки
  static const Color error = Color(0xFFB3261E);
  static const Color onError = Color(0xFFFFFFFF);
}

// ---------------------------------------------------------------------------
// Тёмная тема (тёплый тёмно-коричневый, не холодный)
// ---------------------------------------------------------------------------

abstract class AppColorsDark {
  AppColorsDark._();

  // Основной
  static const Color primary = Color(0xFF6B4A34);
  static const Color primaryVariant = Color(0xFF5A3E2B);
  static const Color primaryContainer = Color(0xFF3A2A1F);
  static const Color onPrimary = Color(0xFFFFFFFF);
  static const Color onPrimaryContainer = Color(0xFFE9E1D5);

  // Акцент
  static const Color accent = Color(0xFFE86F1E);
  static const Color accentLight = Color(0xFFF08A4B);
  static const Color onAccent = Color(0xFF1A1A1A);

  // Фоны
  static const Color background = Color(0xFF1E1A17);
  static const Color surface = Color(0xFF2A231E);
  static const Color surfaceElevated = Color(0xFF332922);

  // Текст
  static const Color onSurface = Color(0xFFF5F5F5);
  static const Color onSurfaceVariant = Color(0xFFB8B0A6);
  static const Color onSurfaceTertiary = Color(0xFF8C837A);

  // Разделители
  static const Color outline = Color(0xFF4A3A30);
  static const Color divider = Color(0xFF4A3A30);

  // Ошибки
  static const Color error = Color(0xFFCF6679);
  static const Color onError = Color(0xFF000000);
}

// ---------------------------------------------------------------------------
// Текущая палитра (зависит от активной темы)
// ---------------------------------------------------------------------------

/// Цветовая палитра дизайн-системы. Значения зависят от текущей темы.
/// Яркость синхронизируется в [KuhniMarinaApp] через [updateBrightness].
abstract class AppColors {
  /// Устанавливается из [Theme.of(context).brightness]. По умолчанию — тёмная тема.
  static Brightness? _brightness = Brightness.dark;

  static void updateBrightness(Brightness brightness) {
    _brightness = brightness;
  }

  static bool get _isDark => _brightness != Brightness.light;

  // ---------------------------------------------------------------------------
  // Семантические цвета бренда
  // ---------------------------------------------------------------------------

  static Color get primary =>
      _isDark ? AppColorsDark.primary : AppColorsLight.primary;
  static Color get primaryVariant =>
      _isDark ? AppColorsDark.primaryVariant : AppColorsLight.primaryVariant;
  static Color get primaryContainer => _isDark
      ? AppColorsDark.primaryContainer
      : AppColorsLight.primaryContainer;
  static const Color onPrimary = Color(0xFFFFFFFF);
  static Color get onPrimaryContainer => _isDark
      ? AppColorsDark.onPrimaryContainer
      : AppColorsLight.onPrimaryContainer;

  static Color get accent =>
      _isDark ? AppColorsDark.accent : AppColorsLight.accent;
  static Color get accentLight =>
      _isDark ? AppColorsDark.accentLight : AppColorsLight.accentLight;
  static Color get onAccent =>
      _isDark ? AppColorsDark.onAccent : AppColorsLight.onAccent;

  // ---------------------------------------------------------------------------
  // Нейтралы и поверхности
  // ---------------------------------------------------------------------------

  static const Color white = Color(0xFFFFFFFF);

  static Color get background =>
      _isDark ? AppColorsDark.background : AppColorsLight.background;
  static Color get surface =>
      _isDark ? AppColorsDark.surface : AppColorsLight.surface;
  static Color get surfaceElevated =>
      _isDark ? AppColorsDark.surfaceElevated : AppColorsLight.surfaceElevated;
  static Color get onSurface =>
      _isDark ? AppColorsDark.onSurface : AppColorsLight.onSurface;
  static Color get onSurfaceVariant => _isDark
      ? AppColorsDark.onSurfaceVariant
      : AppColorsLight.onSurfaceVariant;
  static Color get onSurfaceTertiary => _isDark
      ? AppColorsDark.onSurfaceTertiary
      : AppColorsLight.onSurfaceTertiary;
  static Color get outline =>
      _isDark ? AppColorsDark.outline : AppColorsLight.outline;
  static Color get divider =>
      _isDark ? AppColorsDark.divider : AppColorsLight.divider;

  static const Color error = Color(0xFFB3261E);
  static const Color onError = Color(0xFFFFFFFF);

  // ---------------------------------------------------------------------------
  // Шкала нейтралов (общая для обеих тем)
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
  // Алиасы для существующих виджетов
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
  static Color get base100 => onSurface;

  static Color get brilliance => surface;
  static Color get carbonFiber => onSurface;
  static Color get kettleman => onSurfaceVariant;
  static Color get squant => onSurfaceTertiary;
  static Color get uniformGrey => onSurfaceTertiary;
  static Color get fairway => primaryVariant;
  static Color get formalGarden => primaryVariant;
  static Color get greenStain => primary;
  static Color get quartzite => onPrimaryContainer;
  static Color get astronomer => primaryContainer;
  static Color get silverLeaf =>
      _isDark ? const Color(0xFF6B8A9E) : const Color(0xFF9BBAA2);
  static Color get whiteEdgar => surfaceElevated;
  static Color get unicornSilver => outline;
  static Color get boysenberryShadow =>
      _isDark ? const Color(0xFF1E293B) : const Color(0xFFF2F2FA);
  static Color get drWhite => surface;
  static Color get washMe =>
      _isDark ? const Color(0xFF1E293B) : const Color(0xFFFAFAFF);
  static Color get whitePerl =>
      _isDark ? const Color(0xFF1E293B) : const Color(0xFFFAFAFF);
  static Color get foundationWhite =>
      _isDark ? const Color(0xFF1A2332) : const Color(0xFFF0F0FF);
  static Color get cascadingWhite => surfaceElevated;
  static Color get crystalBell =>
      _isDark ? const Color(0xFF334155) : const Color(0xFFEFEFEF);
  static Color get windChill => primaryContainer;
  static Color get navyBlazer =>
      _isDark ? const Color(0xFF1A2332) : const Color(0xFF28303F);
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
