import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../di/di.dart';
import '../../../../domain/models/measure_request/measure_request_create_request.dart';
import '../../../../domain/repositories/i_measure_requests_repository.dart';
import 'design_request_form_state.dart';

/// Ключ экземпляра формы для family-провайдера ([ValueKey], [UniqueKey] и т.д.).
typedef DesignRequestFormScopeKey = Key;

/// Логика формы заявки: валидация и создание заявки через [IMeasureRequestsRepository].
class DesignRequestFormNotifier
    extends AutoDisposeFamilyNotifier<DesignRequestFormState, DesignRequestFormScopeKey> {
  static const _placeholderAddress = 'Не указан';

  IMeasureRequestsRepository get _repository => getIt<IMeasureRequestsRepository>();

  @override
  DesignRequestFormState build(DesignRequestFormScopeKey arg) =>
      DesignRequestFormState.initial;

  void setAgreed(bool value) {
    state = state.copyWith(agreed: value, clearAgreementError: true);
  }

  void clearNameError() {
    if (state.nameError == null) return;
    state = state.copyWith(clearNameError: true);
  }

  void clearPhoneError() {
    if (state.phoneError == null) return;
    state = state.copyWith(clearPhoneError: true);
  }

  bool _validate(String name, String phone) {
    String? nameError;
    String? phoneError;
    String? agreementError;

    if (name.isEmpty) {
      nameError = 'Укажите имя';
    }
    if (phone.isEmpty) {
      phoneError = 'Укажите телефон';
    }
    if (!state.agreed) {
      agreementError = 'Необходимо согласие на обработку данных';
    }

    state = state.copyWith(
      nameError: nameError,
      phoneError: phoneError,
      agreementError: agreementError,
      clearSubmitError: true,
    );

    return nameError == null && phoneError == null && agreementError == null;
  }

  /// `true` — заявка успешно создана.
  Future<bool> submit({
    required String fullName,
    required String phone,
    required String userMessage,
    String? messageContextPrefix,
  }) async {
    if (state.isSubmitting) return false;

    final name = fullName.trim();
    final phoneTrimmed = phone.trim();

    if (!_validate(name, phoneTrimmed)) return false;

    state = state.copyWith(isSubmitting: true, clearSubmitError: true);

    final result = await _repository.createMeasureRequest(
      MeasureRequestCreateRequest(
        fullName: name,
        phone: phoneTrimmed,
        address: _placeholderAddress,
        comment: _buildComment(
          userMessage: userMessage,
          messageContextPrefix: messageContextPrefix,
        ),
      ),
    );

    return result.when(
      success: (_) {
        state = DesignRequestFormState.initial;
        return true;
      },
      error: (message) {
        state = state.copyWith(isSubmitting: false, submitError: message);
        return false;
      },
    );
  }

  String? _buildComment({
    required String userMessage,
    String? messageContextPrefix,
  }) {
    final parts = <String>[];
    final prefix = messageContextPrefix?.trim();
    if (prefix != null && prefix.isNotEmpty) {
      parts.add(prefix);
    }
    final message = userMessage.trim();
    if (message.isNotEmpty) {
      parts.add(message);
    }
    if (parts.isEmpty) return null;
    return parts.join('\n\n');
  }
}
