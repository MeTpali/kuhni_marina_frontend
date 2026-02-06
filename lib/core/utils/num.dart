import 'package:intl/intl.dart';

abstract class NumUtils {
  ///Форматирует число, разделяя его пробелами по три знака, игнорируя числа после запятой
  ///
  /// ```dart
  /// print(toDecimalFormat(1000.00));   // 1 000
  /// print(toDecimalFormat(100));      // 100
  /// print(toDecimalFormat(1000.01));   // 1 000
  static String toDecimalFormat(double input) {
    final formatter = NumberFormat.currency(
      locale: 'ru_RU',
      symbol: '',
      decimalDigits: 0,
    );
    return formatter.format(input).trim();
  }

  ///Удаляет все пробелы в числе из строки и возвращает int значение
  ///
  /// ```dart
  /// print(fromDecimalFormat('10 00 00'));   // 100000
  /// print(fromDecimalFormat('10 00'));      // 1000
  /// print(fromDecimalFormat('100 000'));   // 100000
  static int fromDecimalFormat(String input) {
    final trimmed = input.replaceAll(RegExp(r'[^0-9]'), '');
    final output = num.tryParse(trimmed);
    if (output == null) throw const FormatException('Input is invalid format');
    return output.toInt();
  }

  /// Форматирует число, разделяя его пробелами по три знака,
  /// сохраняя числа после запятой (если они есть, не более трех).
  ///
  /// ```dart
  /// print(toDecimalFormat(1000.00));    // 1 000
  /// print(toDecimalFormat(1000.25));    // 1 000.25
  /// print(toDecimalFormat(1234567.89)); // 1 234 567.89
  /// print(toDecimalFormat(100));        // 100
  /// ```
  static String doubleToDecimalFormat(double input) {
    final formatter = NumberFormat('#,##0.###', 'ru_RU');
    return formatter.format(input).replaceAll(',', '.');
  }

  /// Удаляет все пробелы в числе из строки, сохраняя десятичную часть,
  /// и возвращает `num` (может быть `int` или `double`).
  ///
  /// ```dart
  /// print(fromDecimalFormat('10 00 00'));   // 100000
  /// print(fromDecimalFormat('10 00.50'));   // 1000.50
  /// print(fromDecimalFormat('100 000,75')); // 100000.75
  /// print(fromDecimalFormat('1.5'));        // 1.5
  /// print(fromDecimalFormat('1,5'));       // 1.5
  /// ```
  static double fromDecimalFormatToDouble(String input) {
    // Удаляем все пробелы
    final withoutSpaces = input.replaceAll(' ', '');
    // Заменяем запятые на точки (для корректного парсинга в Dart)
    final normalized = withoutSpaces.replaceAll(',', '.');
    // Парсим число (поддержка и int, и double)
    final output = double.tryParse(normalized);
    if (output == null) {
      throw const FormatException('Input is invalid number format');
    }
    return output;
  }
}
