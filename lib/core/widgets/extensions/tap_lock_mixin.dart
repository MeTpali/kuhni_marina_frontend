import 'package:flutter/material.dart';

/// Mixin, предотвращающий повторный запуск действия по нажатию, пока предыдущее
/// не завершено.
///
/// Этот mixin удобно использовать с виджетами, в которых требуется заблокировать
/// повторные нажатия кнопки или любого другого элемента до завершения асинхронной операции.
///
/// Пример использования:
/// ```dart
/// class MyButton extends StatefulWidget {
///   const MyButton({super.key});
///
///   @override
///   State<MyButton> createState() => _MyButtonState();
/// }
///
/// class _MyButtonState extends State<MyButton> with TapLockMixin {
///   @override
///   Widget build(BuildContext context) {
///     return ElevatedButton(
///       onPressed: () {
///         runLockedTap(() async {
///           await Future.delayed(Duration(seconds: 2)); // Долгая операция
///         });
///       },
///       child: isTapLocked
///           ? CircularProgressIndicator(color: Colors.white)
///           : Text('Нажми меня'),
///     );
///   }
/// }
/// ```

mixin TapLockMixin<T extends StatefulWidget> on State<T> {
  /// Признак того, что в данный момент выполняется асинхронное действие,
  /// и повторный запуск блокируется.
  ///
  /// Может использоваться, например, чтобы отобразить загрузку или
  /// отключить кнопку.
  bool get isTapLocked => _isTapLocked;
  bool _isTapLocked = false;

  /// Запускает [action], только если оно ещё не выполняется.
  ///
  /// Повторный вызов этого метода будет проигнорирован до тех пор,
  /// пока предыдущий вызов не завершится.
  ///
  /// Внутри метода вызывается `setState`, чтобы виджет мог реагировать
  /// на изменение состояния блокировки, например отображать индикатор загрузки.
  ///
  /// Параметры:
  /// - [action] — функция, которую необходимо выполнить асинхронно.
  ///
  /// Пример:
  /// ```dart
  /// runLockedTap(() async {
  ///   await someAsyncOperation();
  /// });
  /// ```
  Future<void> runLockedTap(Future<void> Function() action) async {
    if (_isTapLocked) return;
    setState(() {
      _isTapLocked = true;
    });
    try {
      await action();
    } finally {
      if (mounted) {
        setState(() {
          _isTapLocked = false;
        });
      }
    }
  }
}
