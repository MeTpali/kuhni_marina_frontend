import 'package:flutter/services.dart';

class MonthInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final text = newValue.text;

    if (!RegExp(r'^\d*$').hasMatch(text)) return oldValue;

    if (text.length > 2) return oldValue;

    if (text.isNotEmpty) {
      final value = int.tryParse(text);
      if (value == null || value < 1 || value > 12) return oldValue;
    }

    return newValue;
  }
}
