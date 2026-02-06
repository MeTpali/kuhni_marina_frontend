import 'package:flutter/services.dart';

class DayInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final text = newValue.text;

    // Разрешаем только цифры
    if (!RegExp(r'^\d*$').hasMatch(text)) return oldValue;

    // Ограничиваем длину
    if (text.length > 2) return oldValue;

    // Проверка корректности дня
    if (text.isNotEmpty) {
      final value = int.tryParse(text);
      if (value == null || value < 1 || value > 31) return oldValue;
    }

    return newValue;
  }
}
