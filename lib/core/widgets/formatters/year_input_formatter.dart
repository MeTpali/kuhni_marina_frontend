import 'package:flutter/services.dart';

class YearInputFormatter extends TextInputFormatter {
  final int minYear;
  final int maxYear;

  YearInputFormatter({this.minYear = 1900, int? maxYear})
    : maxYear = maxYear ?? DateTime.now().year;

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final text = newValue.text;

    if (!RegExp(r'^\d*$').hasMatch(text)) return oldValue;

    if (text.length > 4) return oldValue;

    if (text.length == 4) {
      final value = int.tryParse(text);
      if (value == null || value < minYear || value > maxYear) {
        return oldValue;
      }
    }

    return newValue;
  }
}
