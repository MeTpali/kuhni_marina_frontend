extension ReviewsExtension on int {
  String get reviews {
    final num = this;
    if (num == 0) return 'Отзывов нет';
    final lastDigit = num % 10;
    final lastTwoDigits = num % 100;

    if (lastTwoDigits >= 11 && lastTwoDigits <= 14) {
      return '$num отзывов';
    }

    switch (lastDigit) {
      case 1:
        return '$num отзыв';
      case 2:
      case 3:
      case 4:
        return '$num отзыва';
      default:
        return '$num отзывов';
    }
  }
}
