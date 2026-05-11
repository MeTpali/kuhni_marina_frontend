import 'package:flutter/material.dart';

// ---------------------------------------------------------------------------
// Светлая тема — светло-серые нейтралы + бренд из template.css
// (--main-color, --primary-color, --hover-color, --muted-color, --light-color,
//  --border-color, --contrast-color; панели uikit: #f8f8f8, границы #e5e5e5)
// ---------------------------------------------------------------------------

abstract class AppColorsLight {
  AppColorsLight._();

  // Бренд (красный как на сайте)
  static const Color primary = Color(0xFFE31E24);
  static const Color primaryVariant = Color(0xFFC80B11);
  static const Color primaryContainer = Color(0xFFF5F5F5);
  static const Color onPrimary = Color(0xFFFFFFFF);
  static const Color onPrimaryContainer = Color(0xFF0F0F0F);

  // Акцент = тот же красный, вторичный оттенок — hover
  static const Color accent = Color(0xFFE31E24);
  static const Color accentLight = Color(0xFFC80B11);
  static const Color accentGraphite = Color(0xFF333333);
  static const Color onAccent = Color(0xFFFFFFFF);

  // Фоны (liquid glass: светлый холст + белые «стёкла»)
  static const Color background = Color(0xFFF4F4F4);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color surfaceElevated = Color(0xFFF8F8F8);

  // Текст
  static const Color onSurface = Color(0xFF0F0F0F);
  static const Color onSurfaceVariant = Color(0xFF757575);
  static const Color onSurfaceTertiary = Color(0xFF999999);

  // Разделители
  static const Color outline = Color(0xFFE1E1E1);
  static const Color divider = Color(0xFFE5E5E5);

  // Ошибки (отдельно от брендового красного CTA)
  static const Color error = Color(0xFFC62828);
  static const Color onError = Color(0xFFFFFFFF);
}

// ---------------------------------------------------------------------------
// Тёмная тема — временно совпадает со светлой (та же серая «стеклянная» база)
// ---------------------------------------------------------------------------

abstract class AppColorsDark {
  AppColorsDark._();

  static const Color primary = AppColorsLight.primary;
  static const Color primaryVariant = AppColorsLight.primaryVariant;
  static const Color primaryContainer = AppColorsLight.primaryContainer;
  static const Color onPrimary = AppColorsLight.onPrimary;
  static const Color onPrimaryContainer = AppColorsLight.onPrimaryContainer;

  static const Color accent = AppColorsLight.accent;
  static const Color accentLight = AppColorsLight.accentLight;
  static const Color accentGraphite = AppColorsLight.accentGraphite;
  static const Color onAccent = AppColorsLight.onAccent;

  static const Color background = AppColorsLight.background;
  static const Color surface = AppColorsLight.surface;
  static const Color surfaceElevated = AppColorsLight.surfaceElevated;

  static const Color onSurface = AppColorsLight.onSurface;
  static const Color onSurfaceVariant = AppColorsLight.onSurfaceVariant;
  static const Color onSurfaceTertiary = AppColorsLight.onSurfaceTertiary;

  static const Color outline = AppColorsLight.outline;
  static const Color divider = AppColorsLight.divider;

  static const Color error = AppColorsLight.error;
  static const Color onError = AppColorsLight.onError;
}

// ---------------------------------------------------------------------------
// Текущая палитра (зависит от активной темы)
// ---------------------------------------------------------------------------

/// Цветовая палитра дизайн-системы. Значения зависят от текущей темы.
/// Яркость синхронизируется в [KuhniMarinaApp] через [updateBrightness].
abstract class AppColors {
  /// Устанавливается из [Theme.of(context).brightness]. По умолчанию — светлая.
  static Brightness? _brightness = Brightness.light;

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
  static Color get accentGraphite => _isDark
      ? AppColorsDark.accentGraphite
      : AppColorsLight.accentGraphite;
  static Color get onAccent =>
      _isDark ? AppColorsDark.onAccent : AppColorsLight.onAccent;

  /// Второй акцентный цвет (графит).
  static Color get graphite => accentGraphite;

  // ---------------------------------------------------------------------------
  // Нейтралы и поверхности
  // ---------------------------------------------------------------------------

  static const Color white = Color(0xFFFFFFFF);

  /// Фон экрана главной (#bfbfbf): под сетевым видео и в просветах контента.
  static const Color homePageBackground = Color(0xFFBFBFBF);

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

  static Color get error =>
      _isDark ? AppColorsDark.error : AppColorsLight.error;
  static Color get onError =>
      _isDark ? AppColorsDark.onError : AppColorsLight.onError;

  // ---------------------------------------------------------------------------
  // Шкала нейтралов (общая для обеих тем)
  // ---------------------------------------------------------------------------

  static const Color neutral0 = Color(0xFFFFFFFF);
  static const Color neutral5 = Color(0xFFF8F8F8);
  static const Color neutral10 = Color(0xFFF4F4F4);
  static const Color neutral20 = Color(0xFFE5E5E5);
  static const Color neutral30 = Color(0xFFE1E1E1);
  static const Color neutral40 = Color(0xFFBDBDBD);
  static const Color neutral50 = Color(0xFF999999);
  static const Color neutral60 = Color(0xFF757575);
  static const Color neutral70 = Color(0xFF595959);
  static const Color neutral80 = Color(0xFF333333);
  static const Color neutral90 = Color(0xFF222222);
  static const Color neutral100 = Color(0xFF0F0F0F);
  static const Color neutralBlack = Color(0xFF0F0F0F);

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
  static const Color silverLeaf = Color(0xFF8A8A8A);
  static Color get whiteEdgar => surfaceElevated;
  static Color get unicornSilver => outline;
  static const Color boysenberryShadow = Color(0xFFF2F2F2);
  static Color get drWhite => surface;
  static const Color washMe = Color(0xFFF4F4F4);
  static const Color whitePerl = Color(0xFFF6F6F6);
  static const Color foundationWhite = Color(0xFFF0F0F0);
  static Color get cascadingWhite => surfaceElevated;
  static const Color crystalBell = Color(0xFFEFEFEF);
  static Color get windChill => primaryContainer;
  static const Color navyBlazer = Color(0xFF2C2C2C);
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
