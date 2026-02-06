import 'package:flutter/material.dart';

class ViewBottomPadding extends StatelessWidget {
  final Widget? child;

  /// Виджет необходим для обёртки элементов, который прикреплены к низу экрана, например внутри стэка.
  /// Создан, чтобы обойти прозрачные кнопки навигации в Android API > 35
  const ViewBottomPadding({this.child, super.key});

  @override
  Widget build(BuildContext context) => Padding(
    padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewPadding.bottom),
    child: child,
  );
}

class ViewBottomInsets extends StatelessWidget {
  final Widget? child;

  /// Виджет необходим для обёртки элементов, который прикреплены к низу экрана, например внутри стэка.
  /// Создан, чтобы элемент реагировал например на показ клавиатуры
  const ViewBottomInsets({this.child, super.key});

  @override
  Widget build(BuildContext context) => Padding(
    padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
    child: child,
  );
}
