import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../notifiers/design_request_form_notifier.dart';
import '../notifiers/design_request_form_state.dart';

/// Провайдеры секции заявки на дизайн-проект.
abstract class DesignRequestProviders {
  DesignRequestProviders._();

  /// [family] — [DesignRequestFormScopeKey]: уникальный [Key] экземпляра секции на экране.
  static final formProvider = NotifierProvider.autoDispose
      .family<DesignRequestFormNotifier, DesignRequestFormState, DesignRequestFormScopeKey>(
    DesignRequestFormNotifier.new,
  );
}
