import 'package:intl/intl.dart';

extension RuDate on DateTime {
  /// Переводит дату в строку в формате 'dd.MM.yyyy'
  String get ddMMyyyy => DateFormat('dd.MM.yyyy').format(this);

  /// Переводит дату в строку в формате 'dd.MM'
  String get ddMM => DateFormat('dd.MM').format(this);
}
