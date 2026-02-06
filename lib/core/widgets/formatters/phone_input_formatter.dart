import 'package:flutter/services.dart';

class PhoneInputFormatter extends TextInputFormatter {
  const PhoneInputFormatter();

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final digits = newValue.text.replaceAll(RegExp('[\\D]'), '');
    int offset = 0;
    for (int i = 0; i < newValue.selection.baseOffset; i++) {
      if (int.tryParse(newValue.text[i]) != null) {
        offset++;
      }
    }
    int newOffset = 0;

    final newText = StringBuffer();

    int digitOffset = 0;
    for (int i = 0; i < digits.length; i++) {
      if (newText.length == 18) {
        break;
      }

      if (i == 0) {
        newText.write('+');
        if (digits[i] == '8' || digits[i] == '7') {
          if (offset > 0) {
            newOffset += 2;
          }
          newText.write('7');
          continue;
        } else {
          if (offset > 0) {
            newOffset += 5;
          }

          newText.write('7 (');
          digitOffset++;
        }
      }

      if (i == 1 && digitOffset == 0) {
        if (offset > i + digitOffset) {
          newOffset += 2;
        }

        newText.write(' (');
      }

      if (i + digitOffset == 4) {
        if (offset > i + digitOffset) {
          newOffset += 2;
        }

        newText.write(') ');
      }

      if (i + digitOffset == 7 || i + digitOffset == 9) {
        if (offset > i + digitOffset) {
          newOffset++;
        }

        newText.write('-');
      }

      if (offset > i + digitOffset) {
        newOffset++;
      }

      newText.write('${digits[i]}');
    }

    return TextEditingValue(
      text: newText.toString(),
      selection: TextSelection.collapsed(offset: newOffset),
    );
  }
}
