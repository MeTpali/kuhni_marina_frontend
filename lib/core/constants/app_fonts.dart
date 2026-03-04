/// Константы шрифтов дизайн-системы.
///
/// Заголовки — серриф [heading] (элегантный, премиальный).
/// Основной текст — санс [body] (читаемый, нейтральный).
///
/// Загрузка через пакет `google_fonts` в `app_typography.dart`.
abstract class AppFonts {
  /// Семейство для заголовков: Cormorant Garamond (серриф, премиальный вид).
  static const String heading = 'Cormorant Garamond';

  /// Семейство для основного текста и UI: DM Sans (современный, читаемый).
  static const String body = 'DM Sans';

  /// Резервное семейство (если шрифт не загружен).
  static const String fallback = 'Inter';

  // Обратная совместимость
  static const String inter = fallback;
  static const String nyght = heading;
}
