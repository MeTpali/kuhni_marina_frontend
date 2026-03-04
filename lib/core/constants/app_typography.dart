import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

/// Типографика дизайн-системы: размеры, начертания, стили текста.
///
/// Заголовки — [Cormorant Garamond], основной текст — [DM Sans].
/// Используйте [AppTypography.textTheme] в [ThemeData.textTheme].
abstract class AppTypography {
  AppTypography._();

  /// Базовая цветовая схема для текста (можно переопределять в виджетах).
  static Color get displayColor => AppColors.onSurface;
  static Color get headlineColor => AppColors.onSurface;
  static Color get titleColor => AppColors.onSurface;
  static Color get bodyColor => AppColors.onSurface;
  static Color get bodySecondaryColor => AppColors.onSurfaceVariant;
  static Color get labelColor => AppColors.onSurfaceVariant;
  static Color get captionColor => AppColors.onSurfaceTertiary;

  /// Полный [TextTheme] для [ThemeData.textTheme].
  static TextTheme get textTheme => TextTheme(
      displayLarge: displayLarge,
      displayMedium: displayMedium,
      displaySmall: displaySmall,
      headlineLarge: headlineLarge,
      headlineMedium: headlineMedium,
      headlineSmall: headlineSmall,
      titleLarge: titleLarge,
      titleMedium: titleMedium,
      titleSmall: titleSmall,
      bodyLarge: bodyLarge,
      bodyMedium: bodyMedium,
      bodySmall: bodySmall,
      labelLarge: labelLarge,
      labelMedium: labelMedium,
      labelSmall: labelSmall,
    );

  // --- Display (крупные заголовки, лендинги) — серриф ---

  static TextStyle get displayLarge => GoogleFonts.cormorantGaramond(
        fontSize: 48,
        height: 1.15,
        fontWeight: FontWeight.w600,
        letterSpacing: -0.5,
        color: displayColor,
      );

  static TextStyle get displayMedium => GoogleFonts.cormorantGaramond(
        fontSize: 40,
        height: 1.2,
        fontWeight: FontWeight.w600,
        letterSpacing: -0.25,
        color: displayColor,
      );

  static TextStyle get displaySmall => GoogleFonts.cormorantGaramond(
        fontSize: 32,
        height: 1.25,
        fontWeight: FontWeight.w600,
        color: displayColor,
      );

  // --- Headline (заголовки секций) — серриф ---

  static TextStyle get headlineLarge => GoogleFonts.cormorantGaramond(
        fontSize: 28,
        height: 1.3,
        fontWeight: FontWeight.w600,
        color: headlineColor,
      );

  static TextStyle get headlineMedium => GoogleFonts.cormorantGaramond(
        fontSize: 24,
        height: 1.3,
        fontWeight: FontWeight.w600,
        color: headlineColor,
      );

  static TextStyle get headlineSmall => GoogleFonts.cormorantGaramond(
        fontSize: 20,
        height: 1.35,
        fontWeight: FontWeight.w600,
        color: headlineColor,
      );

  // --- Title (подзаголовки, карточки) — серриф для крупных, санс для мелких ---

  static TextStyle get titleLarge => GoogleFonts.cormorantGaramond(
        fontSize: 20,
        height: 1.4,
        fontWeight: FontWeight.w500,
        color: titleColor,
      );

  static TextStyle get titleMedium => GoogleFonts.dmSans(
        fontSize: 16,
        height: 1.4,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.1,
        color: titleColor,
      );

  static TextStyle get titleSmall => GoogleFonts.dmSans(
        fontSize: 14,
        height: 1.4,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.1,
        color: titleColor,
      );

  // --- Body (основной текст) — санс ---

  static TextStyle get bodyLarge => GoogleFonts.dmSans(
        fontSize: 16,
        height: 1.5,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15,
        color: bodyColor,
      );

  static TextStyle get bodyMedium => GoogleFonts.dmSans(
        fontSize: 14,
        height: 1.45,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        color: bodyColor,
      );

  static TextStyle get bodySmall => GoogleFonts.dmSans(
        fontSize: 12,
        height: 1.4,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4,
        color: bodySecondaryColor,
      );

  // --- Label (кнопки, чипы, подписи) — санс ---

  static TextStyle get labelLarge => GoogleFonts.dmSans(
        fontSize: 14,
        height: 1.4,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
        color: labelColor,
      );

  static TextStyle get labelMedium => GoogleFonts.dmSans(
        fontSize: 12,
        height: 1.35,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.5,
        color: labelColor,
      );

  static TextStyle get labelSmall => GoogleFonts.dmSans(
        fontSize: 11,
        height: 1.35,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.5,
        color: captionColor,
      );
}
