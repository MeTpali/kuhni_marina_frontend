import 'package:characters/characters.dart';
import 'package:flutter/services.dart';

class AlphabeticalInputFormatter extends TextInputFormatter {
  const AlphabeticalInputFormatter();

  static final _allowed = RegExp(r'[\p{L}\- ]', unicode: true);

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final full = newValue.text;
    final cursorPos = newValue.selection.baseOffset;

    int allowedBefore = 0;
    for (int i = 0; i < cursorPos && i < full.length; i++) {
      if (_allowed.hasMatch(full[i])) {
        allowedBefore++;
      }
    }

    final allowedList = full.characters
        .where((ch) => _allowed.hasMatch(ch))
        .toList();

    final truncatedList = allowedList.take(20).toList();
    final truncated = truncatedList.join();

    final beforeList = truncatedList.take(allowedBefore).toList();
    final newOffset = beforeList.join().length;

    return TextEditingValue(
      text: truncated,
      selection: TextSelection.collapsed(offset: newOffset),
    );
  }
}
