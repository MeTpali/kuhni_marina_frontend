import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../shell/widgets/shell_tab_placeholder.dart';

@RoutePage()
class FurniturePage extends StatelessWidget {
  const FurniturePage({super.key});

  @override
  Widget build(BuildContext context) =>
      const ShellTabPlaceholder(title: 'Мебель');
}
