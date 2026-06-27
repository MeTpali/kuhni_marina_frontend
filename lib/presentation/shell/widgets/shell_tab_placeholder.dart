import 'package:flutter/material.dart';

import '../../../core/constants/home_sizes.dart';
import '../../../core/constants/screen_size.dart';
import 'shell_tab_scaffold.dart';

/// Заглушка вкладки shell до реализации страницы.
class ShellTabPlaceholder extends StatelessWidget {
  const ShellTabPlaceholder({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    final s = context.screenSize;

    return ShellTabScaffold(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: s.horizontalPadding,
          vertical: s.sectionSpacing,
        ),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
