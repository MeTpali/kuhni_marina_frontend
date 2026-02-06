import 'package:intl/intl.dart';

extension NumsExtension on num {
  ///Обрезает дробную часть double, если число целочисленное
  ///
  /// ```dart
  /// print(100.00.truncateIfPossible());   // 100
  /// print(100.truncateIfPossible());      // 100
  /// print(100.01.truncateIfPossible());   // 100.01
  String truncateIfPossible() => (isInteger() ? truncate() : this).toString();

  ///Проверка числа на целостность.
  ///
  /// ```dart
  /// print(100.00.isInteger());   // true
  /// print(100.isInteger());      // true
  /// print(100.01.isInteger());   // false
  bool isInteger() => this is int || this == this.roundToDouble();

  ///Возвращает цену в рублях.
  ///```dart
  /// print(1000.00.toPriceStr());   // 1 000 ₽
  /// print(1000.toPriceStr());      // 1 000 ₽
  /// print(1000.01.toPriceStr());   // 1 000,01 ₽
  String toPriceStr() {
    final formatter = NumberFormat.currency(
      locale: 'ru_RU',
      symbol: '₽',
      decimalDigits: isInteger() ? 0 : 2,
    );
    return formatter.format(this).trim();
  }
}
