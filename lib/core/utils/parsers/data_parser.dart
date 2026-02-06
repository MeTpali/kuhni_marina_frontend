class DataParser {
  ///Преобразует массив nullable величин в массив noNull величин. Используется при парсинге изображений List<String>
  static List<String> listOfNullableStringsToNonNullList(dynamic json) {
    if (json == null) return [];
    if (json is! List) return [];

    return json.where((e) => e != null).map((e) => e.toString()).toList();
  }

  ///Преобразует Map<String, dynamic> в Map<String, String>. Используется для парсинга фильтров
  static Map<String, String> fromDynamicToStringMap(dynamic json) {
    if (json == null || json is! Map) return {};

    return Map<String, dynamic>.from(
      json,
    ).map((key, value) => MapEntry(key, value.toString()));
  }

  ///Преобразует массив динамических величин в массив строк.
  static List<String> dynamicListToStringList(dynamic json) {
    if (json == null) return [];
    if (json is! List) return [];

    return json.map((e) => e.toString()).toList();
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

  ///Используется для парсинга String в int?. Например, для парсинга price
  static int? stringToNullableInt(dynamic value) {
    if (value == null) {
      return null;
    }
    if (value is int) return value;
    if (value is String) return double.tryParse(value)?.floor();
    return null;
  }

  ///Используется для парсинга String в double
  static double stringToDouble(dynamic value) {
    if (value == null) {
      return 0.0;
    }
    if (value is double) return value;
    if (value is int) return value.toDouble();
    if (value is String) return double.tryParse(value) ?? 0.0;
    return 0.0;
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
      final dateOnly = dateString.split(' ').firstOrNull;
      if (dateOnly == null) return null;
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
