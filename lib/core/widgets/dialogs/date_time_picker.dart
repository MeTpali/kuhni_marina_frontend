import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../constants/app_colors.dart';
import 'simple_bottom_sheet.dart';

enum DateTimePickerType {
  year,
  month,
  day,
  hour,
  minute,
  second;

  List<String> get items => switch (this) {
    DateTimePickerType.year => List.generate(
      100,
      (index) => (DateTime.now().year - index).toString(),
    ).toList(),
    DateTimePickerType.month => List.generate(12, (index) {
      final monthDate = DateTime(DateTime.now().year, index + 1);
      final monthName = DateFormat('MMMM', 'ru_RU').format(monthDate);
      return monthName[0].toUpperCase() + monthName.substring(1);
    }),
    DateTimePickerType.day => List.generate(
      31,
      (index) => (index + 1).toString(),
    ),
    DateTimePickerType.hour => List.generate(
      24,
      (index) => (index + 1).toString(),
    ),
    DateTimePickerType.minute => List.generate(
      60,
      (index) => (index + 1).toString(),
    ),
    DateTimePickerType.second => List.generate(
      60,
      (index) => (index + 1).toString(),
    ),
  };

  int findItemIndex(String value) {
    // Сначала пробуем найти точное совпадение
    final directIndex = items.indexOf(value);
    if (directIndex != -1) {
      return directIndex;
    }

    // Если не найдено, обрабатываем специальные случаи
    return switch (this) {
      DateTimePickerType.year => 0, // Если не найден год, возвращаем 0

      DateTimePickerType.month => () {
        // Пробуем найти по номеру месяца (например, '04' -> апрель, индекс 3)
        final monthNumber = int.tryParse(value);
        if (monthNumber != null && monthNumber >= 1 && monthNumber <= 12) {
          return monthNumber - 1; // Номер месяца - 1 = индекс
        }
        return 0; // Если не найден, возвращаем 0
      }(),

      DateTimePickerType.day => () {
        // Пробуем найти по числу с учетом ведущего нуля (например, '03' -> 2)
        final dayNumber = int.tryParse(value);
        if (dayNumber != null && dayNumber >= 1 && dayNumber <= 31) {
          return dayNumber - 1; // Число - 1 = индекс
        }
        return 0; // Если не найден, возвращаем 0
      }(),

      DateTimePickerType.hour => () {
        // Пробуем найти по числу с учетом ведущего нуля (например, '03' -> 2)
        final hourNumber = int.tryParse(value);
        if (hourNumber != null && hourNumber >= 1 && hourNumber <= 24) {
          return hourNumber - 1; // Число - 1 = индекс
        }
        return 0; // Если не найден, возвращаем 0
      }(),

      DateTimePickerType.minute => () {
        // Пробуем найти по числу с учетом ведущего нуля (например, '03' -> 2)
        final minuteNumber = int.tryParse(value);
        if (minuteNumber != null && minuteNumber >= 1 && minuteNumber <= 60) {
          return minuteNumber - 1; // Число - 1 = индекс
        }
        return 0; // Если не найден, возвращаем 0
      }(),

      DateTimePickerType.second => () {
        // Пробуем найти по числу с учетом ведущего нуля (например, '03' -> 2)
        final secondNumber = int.tryParse(value);
        if (secondNumber != null && secondNumber >= 1 && secondNumber <= 60) {
          return secondNumber - 1; // Число - 1 = индекс
        }
        return 0; // Если не найден, возвращаем 0
      }(),
    };
  }
}

Future<void> showDateTimePicker({
  required BuildContext context,
  required String title,
  required DateTimePickerType type,
  required ValueChanged<int> onSelected,
  final String? initialValue,
  TextStyle? titleStyle,
  TextStyle? itemStyle,
}) => showModalBottomSheet<void>(
  context: context,
  backgroundColor: Colors.transparent,
  isScrollControlled: true,
  builder: (_) => DateTimePicker(
    title: title,
    type: type,
    onSelected: onSelected,
    initialValue: initialValue,
    titleStyle: titleStyle,
    itemStyle: itemStyle,
  ),
);

class DateTimePicker extends StatelessWidget {
  final String title;
  final DateTimePickerType type;
  final String? initialValue;
  final ValueChanged<int> onSelected;
  final TextStyle? titleStyle;
  final TextStyle? itemStyle;
  const DateTimePicker({
    required this.title,
    required this.type,
    required this.onSelected,
    this.initialValue,
    this.titleStyle,
    this.itemStyle,
    super.key,
  });

  @override
  Widget build(BuildContext context) => SimpleBottomSheet(
    title: title,
    titleStyle: titleStyle,
    showBackButton: false,
    child: Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: SizedBox(
        height: 200,
        child: CupertinoPicker(
          itemExtent: 32,
          onSelectedItemChanged: (value) {
            if (type == DateTimePickerType.year) {
              onSelected(int.parse(type.items[value]));
            } else {
              onSelected(value + 1);
            }
          },
          useMagnifier: true,
          magnification: 1.2,
          squeeze: 0.9,
          scrollController: FixedExtentScrollController(
            initialItem: type.findItemIndex(initialValue ?? ''),
          ),
          selectionOverlay: Container(
            margin: const EdgeInsetsDirectional.only(start: 9, end: 9),
            decoration: BoxDecoration(
              borderRadius: const BorderRadiusDirectional.all(
                Radius.circular(12),
              ),
              color: CupertinoDynamicColor.resolve(
                const Color.fromARGB(15, 108, 108, 255),
                context,
              ),
            ),
          ),
          children: type.items
              .map(
                (e) => Center(
                  child: Text(
                    e,
                    style:
                        itemStyle ??
                        const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.carbonFiber,
                        ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    ),
  );
}
