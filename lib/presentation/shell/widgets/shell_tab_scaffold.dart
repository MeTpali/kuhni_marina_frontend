import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../main_shell_scope.dart';

/// Обёртка для вкладок shell: фон и отступ под app bar.
class ShellTabScaffold extends StatelessWidget {
  const ShellTabScaffold({
    required this.child,
    this.backgroundColor = AppColors.homePageBackground,
    super.key,
  });

  final Widget child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    final topInset = MainShellScope.topInsetOf(context);

    return ColoredBox(
      color: backgroundColor,
      child: CustomScrollView(
        primary: true,
        slivers: [
          SliverPadding(
            padding: EdgeInsets.only(top: topInset),
            sliver: SliverToBoxAdapter(child: child),
          ),
        ],
      ),
    );
  }
}
