extension StringExtension on String {
  String capitalize() {
    if (isEmpty) return this;
    return this[0].toUpperCase() + substring(1).toLowerCase();
  }

  String removeHtmlTags() {
    if (isEmpty) return this;
    return this
        .replaceAll('&nbsp;', ' ')
        .replaceAll('&amp;', '&')
        .replaceAll('&quot;', '"')
        .replaceAll('&apos;', "'")
        .replaceAll('&lt;', '<')
        .replaceAll('&gt;', '>')
        .replaceAll('�', '')
        .replaceAll(r'\u003C', '<')
        .replaceAll(r'\u003E', '>')
        .replaceAll(r'\"', '"')
        .replaceAll(r'\n', ' ')
        .replaceAll(r'\r', ' ')
        .replaceAll(r'\t', ' ')
        .replaceAll(RegExp(r'<[^>]*>'), ' ')
        .replaceAll(RegExp(r'[ \t]+'), ' ')
        .replaceAll(RegExp(r'\s+'), ' ')
        .replaceAll(RegExp(r'\s+([,.!?])'), r'\1')
        .trim();
  }

  /// Преобразует double в строку с удалением лишних нулей после десятичной точки
  ///
  /// Примеры:
  /// - 24.000 → "24.0"
  /// - 11.000 → "11.0"
  /// - 0.4 → "0.4"
  /// - 0.4501 → "0.4501"
  /// - 5.0 → "5.0"
  /// - 0.0 → "0.0"
  String removeTrailingZeros() {
    if (double.tryParse(this) == null || !contains('.')) return this;

    final parts = split('.');
    if (parts.length != 2) return this;
    final integerPart = parts[0];
    var decimalPart = parts[1];
    decimalPart = decimalPart.replaceAll(RegExp(r'0+$'), '');
    if (decimalPart.isEmpty) {
      return '$integerPart.0';
    }
    return '$integerPart.$decimalPart';
  }
}
