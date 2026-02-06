import 'package:flutter/services.dart';

class TimeInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    // Удаляем всё, кроме цифр
    final digits = newValue.text.replaceAll(RegExp(r'[^0-9]'), '');

    // Пустая строка → пусто
    if (digits.isEmpty) {
      return newValue.copyWith(text: '');
    }

    String hh = '';
    String mm = '';

    if (digits.length <= 2) {
      hh = digits;
    } else {
      hh = digits.substring(0, 2);
      mm = digits.substring(2, digits.length > 4 ? 4 : digits.length);
    }

    // Ограничения
    if (hh.length == 2) {
      final h = int.tryParse(hh) ?? 0;
      if (h > 23) hh = '23';
    }

    if (mm.length == 2) {
      final m = int.tryParse(mm) ?? 0;
      if (m > 59) mm = '59';
    }

    // Формируем итоговую строку
    String formatted;
    if (digits.length <= 2) {
      formatted = hh;
    } else {
      formatted = '$hh:$mm';
    }

    // Корректная позиция курсора
    return TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(offset: formatted.length),
    );
  }
}
