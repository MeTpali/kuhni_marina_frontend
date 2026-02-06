class DataParser {
  ///Преобразует массив nullable величин в массив noNull величин. Используется при парсинге изображений List<String>
  static List<String> listOfNullableStringsToNonNullList(dynamic json) {
    if (json == null) return [];
    if (json is! List) return [];

    return json.where((e) => e != null).map((e) => e.toString()).toList();
  }

  ///Используется для парсинга String в int. Например, для парсинга id
  static int stringToInt(dynamic value) {
    if (value == null) {
      return 0;
    }
    if (value is int) return value;
    if (value is String) return (double.tryParse(value) ?? 0.0).floor();
    return 0;
  }

  ///Используется для парсинга значений Y/N в bool
  static bool YNToBool(dynamic value) {
    if (value == null) {
      return false;
    }
    if (value is String) return value == 'Y';
    return false;
  }

  ///Используется для парсинга значений bool в Y/N
  static String? boolToYN(bool value) => value ? 'Y' : 'N';

  static DateTime? stringToDateTime(dynamic value) {
    if (value == null || value is! String) {
      return null;
    }

    final String dateString = value;

    try {
      final dateOnly = dateString.split(' ').first;
      final parts = dateOnly.split('.');
      if (parts.length != 3) {
        throw const FormatException('Invalid date format. Expected dd.MM.yyyy');
      }

      final day = int.parse(parts[0]);
      final month = int.parse(parts[1]);
      final year = int.parse(parts[2]);

      return DateTime(year, month, day);
    } on Exception catch (_) {
      return null;
    }
  }
}
