import 'dart:math';

import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

// class MoneyEditingFormatter extends TextInputFormatter {
//   static const ruble = '₽';
//   final NumberFormat formatter = NumberFormat.decimalPattern('ru');

//   @override
//   TextEditingValue formatEditUpdate(
//     TextEditingValue oldValue,
//     TextEditingValue newValue,
//   ) {
//     // Удаляем ₽ и пробелы
//     String raw = newValue.text.replaceAll(ruble, '').replaceAll(' ', '');

//     // Если пусто → 0
//     if (raw.isEmpty) raw = '0';

//     // Если ввели не цифру → возвращаем старое
//     if (!RegExp(r'^\d+$').hasMatch(raw)) {
//       return oldValue;
//     }

//     // Форматируем
//     final int number = int.parse(raw);
//     final formattedNumber = formatter.format(number);
//     final output = "$formattedNumber$ruble";

//     // ---- ЛОГИКА КУРСОРА ----

//     int newCursorPos = newValue.selection.baseOffset;

//     // Подсчитываем, сколько цифр было слева от курсора ДО форматирования
//     int digitsBeforeCursor = _countDigitsLeft(newValue.text, newCursorPos);

//     // Находим позицию в ОТФОРМАТИРОВАННОМ тексте,
//     // куда должен встать курсор (после тех же digitsBeforeCursor)
//     newCursorPos = _cursorPosFromDigits(output, digitsBeforeCursor);

//     // Не даём курсору перейти за знак ₽
//     if (newCursorPos > output.length - 1) {
//       newCursorPos = output.length - 1;
//     }

//     return TextEditingValue(
//       text: output,
//       selection: TextSelection.collapsed(offset: newCursorPos),
//     );
//   }

//   /// Сколько цифр слева от курсора
//   int _countDigitsLeft(String text, int cursorPos) {
//     int count = 0;
//     for (int i = 0; i < cursorPos && i < text.length; i++) {
//       if (_isDigit(text[i])) count++;
//     }
//     return count;
//   }

//   /// Находим позицию курсора в отформатированном тексте,
//   /// которая соответствует количеству цифр слева
//   int _cursorPosFromDigits(String formatted, int digitsBefore) {
//     int count = 0;
//     for (int i = 0; i < formatted.length; i++) {
//       if (_isDigit(formatted[i])) {
//         count++;
//         if (count == digitsBefore) {
//           return i + 1;
//         }
//       }
//     }
//     return formatted.length - 1;
//   }

//   bool _isDigit(String ch) => RegExp(r'\d').hasMatch(ch);
// }

class MoneyEditingFormatter extends TextInputFormatter {
  static const ruble = '₽';
  final NumberFormat formatter = NumberFormat.decimalPattern('ru');

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final dirtyDigits = newValue.text.replaceAll(RegExp('[\\D]'), '').split('');
    final digits = StringBuffer();
    for (final digit in dirtyDigits) {
      if (digits.isEmpty && digit == '0') {
        continue;
      }
      digits.write(digit);
    }

    int offset = 0;
    for (int i = 0; i < newValue.selection.baseOffset; i++) {
      if (int.tryParse(newValue.text[i]) != null) {
        offset++;
      }
    }
    int newOffset = 0;

    final newText = StringBuffer();

    for (int i = 0; i < digits.length; i++) {
      if ((digits.length - i) % 3 == 0 && newText.isNotEmpty) {
        newText.write(' ');
        if (offset > i) {
          newOffset++;
        }
      }

      if (offset > i) {
        newOffset++;
      }

      newText.write('${digits.toString()[i]}');
    }

    if (newText.isEmpty) {
      newText.write('0');
      newOffset++;
    }

    newText.write(ruble);

    return TextEditingValue(
      text: newText.toString(),
      selection: TextSelection.collapsed(
        offset: min(newOffset, newText.length - 1),
      ),
    );
  }
}
