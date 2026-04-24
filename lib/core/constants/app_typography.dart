import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

/// Параметры цветов для [AppTypography.textThemeWith].
class AppTypographyColors {
  const AppTypographyColors({
    required this.displayColor,
    required this.headlineColor,
    required this.titleColor,
    required this.bodyColor,
    required this.bodySecondaryColor,
    required this.labelColor,
    required this.captionColor,
  });

  final Color displayColor;
  final Color headlineColor;
  final Color titleColor;
  final Color bodyColor;
  final Color bodySecondaryColor;
  final Color labelColor;
  final Color captionColor;
}

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

  /// Полный [TextTheme] для [ThemeData.textTheme] (использует текущие [AppColors]).
  static TextTheme get textTheme => textThemeWith(
    displayColor: displayColor,
    headlineColor: headlineColor,
    titleColor: titleColor,
    bodyColor: bodyColor,
    bodySecondaryColor: bodySecondaryColor,
    labelColor: labelColor,
    captionColor: captionColor,
  );

  /// [TextTheme] с заданными цветами (для светлой/тёмной темы).
  static TextTheme textThemeWith({
    required Color displayColor,
    required Color headlineColor,
    required Color titleColor,
    required Color bodyColor,
    required Color bodySecondaryColor,
    required Color labelColor,
    required Color captionColor,
  }) => TextTheme(
    displayLarge: GoogleFonts.cormorantGaramond(
      fontSize: 48,
      height: 1.15,
      fontWeight: FontWeight.w600,
      letterSpacing: -0.5,
      color: displayColor,
    ),
    displayMedium: GoogleFonts.cormorantGaramond(
      fontSize: 40,
      height: 1.2,
      fontWeight: FontWeight.w600,
      letterSpacing: -0.25,
      color: displayColor,
    ),
    displaySmall: GoogleFonts.cormorantGaramond(
      fontSize: 32,
      height: 1.25,
      fontWeight: FontWeight.w600,
      color: displayColor,
    ),
    headlineLarge: GoogleFonts.cormorantGaramond(
      fontSize: 28,
      height: 1.3,
      fontWeight: FontWeight.w600,
      color: headlineColor,
    ),
    headlineMedium: GoogleFonts.cormorantGaramond(
      fontSize: 24,
      height: 1.3,
      fontWeight: FontWeight.w600,
      color: headlineColor,
    ),
    headlineSmall: GoogleFonts.cormorantGaramond(
      fontSize: 20,
      height: 1.35,
      fontWeight: FontWeight.w600,
      color: headlineColor,
    ),
    titleLarge: GoogleFonts.cormorantGaramond(
      fontSize: 20,
      height: 1.4,
      fontWeight: FontWeight.w500,
      color: titleColor,
    ),
    titleMedium: GoogleFonts.cormorantInfant(
      fontSize: 16,
      height: 1.4,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.1,
      color: titleColor,
    ),
    titleSmall: GoogleFonts.cormorantInfant(
      fontSize: 14,
      height: 1.4,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.1,
      color: titleColor,
    ),
    bodyLarge: GoogleFonts.cormorantGaramond(
      fontSize: 16,
      height: 1.5,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
      color: bodyColor,
    ),
    bodyMedium: GoogleFonts.cormorantGaramond(
      fontSize: 14,
      height: 1.45,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      color: bodyColor,
    ),
    bodySmall: GoogleFonts.cormorantGaramond(
      fontSize: 12,
      height: 1.4,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
      color: bodySecondaryColor,
    ),
    labelLarge: GoogleFonts.cormorantInfant(
      fontSize: 14,
      height: 1.4,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      color: labelColor,
    ),
    labelMedium: GoogleFonts.cormorantInfant(
      fontSize: 12,
      height: 1.35,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      color: labelColor,
    ),
    labelSmall: GoogleFonts.cormorantInfant(
      fontSize: 11,
      height: 1.35,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      color: captionColor,
    ),
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

  static TextStyle get titleMedium => GoogleFonts.cormorantInfant(
    fontSize: 16,
    height: 1.4,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.1,
    color: titleColor,
  );

  static TextStyle get titleSmall => GoogleFonts.cormorantInfant(
    fontSize: 14,
    height: 1.4,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.1,
    color: titleColor,
  );

  // --- Body (основной текст) — санс ---

  static TextStyle get bodyLarge => GoogleFonts.cormorantInfant(
    fontSize: 16,
    height: 1.5,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.15,
    color: bodyColor,
  );

  static TextStyle get bodyMedium => GoogleFonts.cormorantInfant(
    fontSize: 14,
    height: 1.45,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
    color: bodyColor,
  );

  static TextStyle get bodySmall => GoogleFonts.cormorantInfant(
    fontSize: 12,
    height: 1.4,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
    color: bodySecondaryColor,
  );

  // --- Label (кнопки, чипы, подписи) — санс ---

  static TextStyle get labelLarge => GoogleFonts.cormorantInfant(
    fontSize: 14,
    height: 1.4,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
    color: labelColor,
  );

  static TextStyle get labelMedium => GoogleFonts.cormorantInfant(
    fontSize: 12,
    height: 1.35,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
    color: labelColor,
  );

  static TextStyle get labelSmall => GoogleFonts.cormorantInfant(
    fontSize: 11,
    height: 1.35,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
    color: captionColor,
  );
}
