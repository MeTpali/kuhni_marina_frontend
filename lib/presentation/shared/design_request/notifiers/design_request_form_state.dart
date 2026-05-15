/// Состояние формы заявки на дизайн-проект (валидация и отправка).
class DesignRequestFormState {
  const DesignRequestFormState({
    this.isSubmitting = false,
    this.nameError,
    this.phoneError,
    this.agreementError,
    this.submitError,
    this.agreed = false,
  });

  final bool isSubmitting;
  final String? nameError;
  final String? phoneError;
  final String? agreementError;
  final String? submitError;
  final bool agreed;

  static const initial = DesignRequestFormState();

  DesignRequestFormState copyWith({
    bool? isSubmitting,
    String? nameError,
    String? phoneError,
    String? agreementError,
    String? submitError,
    bool? agreed,
    bool clearNameError = false,
    bool clearPhoneError = false,
    bool clearAgreementError = false,
    bool clearSubmitError = false,
  }) {
    return DesignRequestFormState(
      isSubmitting: isSubmitting ?? this.isSubmitting,
      nameError: clearNameError ? null : (nameError ?? this.nameError),
      phoneError: clearPhoneError ? null : (phoneError ?? this.phoneError),
      agreementError:
          clearAgreementError ? null : (agreementError ?? this.agreementError),
      submitError: clearSubmitError ? null : (submitError ?? this.submitError),
      agreed: agreed ?? this.agreed,
    );
  }
}
