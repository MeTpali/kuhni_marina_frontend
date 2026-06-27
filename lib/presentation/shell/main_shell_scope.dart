import 'package:flutter/material.dart';

/// Данные shell-оболочки для дочерних страниц (отступ под app bar).
class MainShellScope extends InheritedWidget {
  const MainShellScope({
    required this.appBarTopInset,
    required super.child,
    super.key,
  });

  final double appBarTopInset;

  static MainShellScope of(BuildContext context) {
    final scope = context.dependOnInheritedWidgetOfExactType<MainShellScope>();
    assert(scope != null, 'MainShellScope not found in context');
    return scope!;
  }

  static double topInsetOf(BuildContext context) => of(context).appBarTopInset;

  @override
  bool updateShouldNotify(MainShellScope oldWidget) =>
      appBarTopInset != oldWidget.appBarTopInset;
}
