import 'package:flutter/material.dart';

import '../../shared/design_request/widgets/design_request_section.dart';

/// Секция заявки на дизайн-проект на главной.
class HomeDesignRequestSection extends StatelessWidget {
  const HomeDesignRequestSection({super.key});

  static const _formScopeKey = ValueKey('home-design-request-form');

  @override
  Widget build(BuildContext context) => const DesignRequestSection(
    formScopeKey: _formScopeKey,
    revealKey: _formScopeKey,
  );
}
