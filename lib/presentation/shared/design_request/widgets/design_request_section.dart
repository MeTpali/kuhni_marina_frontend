import 'dart:ui' show ImageFilter;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_spacing.dart';
import '../../../../core/constants/home_sizes.dart';
import '../../../../core/constants/screen_size.dart';
import '../../../../core/widgets/cards/home_glass_card.dart';
import '../../../../core/widgets/formatters/phone_input_formatter.dart';
import '../../../../core/widgets/reveal/reveal_wrap.dart';
import '../providers/design_request_providers.dart';
import 'design_request_form_field.dart';

/// Полноэкранная секция заявки на бесплатный дизайн-проект.
///
/// [formScopeKey] — уникальный [Key] экземпляра формы ([ValueKey], [UniqueKey]).
/// [messageContextPrefix] — контекст экрана для администратора; попадает в начало
/// комментария при отправке (перед текстом из поля «Сообщение»).
class DesignRequestSection extends ConsumerStatefulWidget {
  const DesignRequestSection({
    required this.formScopeKey,
    super.key,
    this.messageContextPrefix,
    this.title = _defaultTitle,
    this.glassText = _defaultGlassText,
    this.revealKey = const ValueKey('design-request-form'),
  });

  final Key formScopeKey;
  final String? messageContextPrefix;
  final String title;
  final String glassText;
  final Key revealKey;

  static const String _defaultTitle = 'Получите бесплатный дизайн-проект';
  static const String _defaultGlassText =
      'Заполните форму, чтобы персональный дизайнер составил проект кухни по вашим размерам';

  @override
  ConsumerState<DesignRequestSection> createState() =>
      _DesignRequestSectionState();
}

class _DesignRequestSectionState extends ConsumerState<DesignRequestSection> {
  static const double _columnMaxWidth = 500;

  static const List<Shadow> _textShadow = [
    Shadow(blurRadius: 12, color: Color(0x73000000), offset: Offset(0, 2)),
  ];

  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _messageController = TextEditingController();

  late final TapGestureRecognizer _onPersonalDataTap;
  late final TapGestureRecognizer _onSecurityPolicyTap;

  @override
  void initState() {
    super.initState();
    _onPersonalDataTap = TapGestureRecognizer()..onTap = () {};
    _onSecurityPolicyTap = TapGestureRecognizer()..onTap = () {};
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _messageController.dispose();
    _onPersonalDataTap.dispose();
    _onSecurityPolicyTap.dispose();
    super.dispose();
  }

  Future<void> _onSubmit() async {
    final notifier = ref
        .read(DesignRequestProviders.formProvider(widget.formScopeKey).notifier);

    final success = await notifier.submit(
      fullName: _nameController.text,
      phone: _phoneController.text,
      userMessage: _messageController.text,
      messageContextPrefix: widget.messageContextPrefix,
    );

    if (!mounted || !success) return;

    _nameController.clear();
    _phoneController.clear();
    _messageController.clear();

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Заявка отправлена')),
    );
  }

  Widget _constrainedColumn(Widget child) => ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: _columnMaxWidth),
        child: child,
      );

  @override
  Widget build(BuildContext context) {
    final formState =
        ref.watch(DesignRequestProviders.formProvider(widget.formScopeKey));

    final s = context.screenSize;
    final viewportHeight = MediaQuery.sizeOf(context).height;
    const verticalPad = AppSpacing.xl;
    final contentMinHeight = viewportHeight - verticalPad * 2;
    final pad = s.horizontalPadding;
    final linkStyle = Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: AppColors.accentLight,
          decoration: TextDecoration.underline,
          decorationColor: AppColors.accentLight,
        );

    final titleStyle = Theme.of(context).textTheme.headlineMedium?.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w600,
          fontSize: s.headlineMediumSize * 1.35,
          height: 1.15,
          shadows: _textShadow,
        );

    final glassTextStyle = Theme.of(context).textTheme.bodyLarge?.copyWith(
          fontSize: s.bodyLargeSize,
          height: 1.4,
          color: AppColors.base0,
          shadows: _textShadow,
        );

    final leftColumn = _constrainedColumn(
      Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.title, style: titleStyle),
          SizedBox(height: s.sectionTitleBottomSpacing),
          HomeGlassCard(
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.sm),
              child: Text(widget.glassText, style: glassTextStyle),
            ),
          ),
        ],
      ),
    );

    final formCard = _constrainedColumn(
      DecoratedBox(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.12),
              blurRadius: 24,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.xl),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              DesignRequestFormField(
                label: 'Имя',
                controller: _nameController,
                errorText: formState.nameError,
                onChanged: (_) => ref
                    .read(DesignRequestProviders.formProvider(widget.formScopeKey).notifier)
                    .clearNameError(),
              ),
              const SizedBox(height: AppSpacing.xxl),
              DesignRequestFormField(
                label: 'Телефон',
                controller: _phoneController,
                errorText: formState.phoneError,
                keyboardType: TextInputType.phone,
                formatters: const [PhoneInputFormatter()],
                onChanged: (_) => ref
                    .read(DesignRequestProviders.formProvider(widget.formScopeKey).notifier)
                    .clearPhoneError(),
              ),
              const SizedBox(height: AppSpacing.xxl),
              DesignRequestFormField(
                label: 'Сообщение',
                controller: _messageController,
                maxLines: 4,
                border: const OutlineInputBorder(),
              ),
              const SizedBox(height: AppSpacing.xxl),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Transform.scale(
                    scale: 0.8,
                    child: Checkbox(
                      value: formState.agreed,
                      onChanged: formState.isSubmitting
                          ? null
                          : (v) => ref
                              .read(
                                DesignRequestProviders.formProvider(widget.formScopeKey)
                                    .notifier,
                              )
                              .setAgreed(v ?? false),
                      activeColor: AppColors.accent,
                      side: formState.agreementError != null
                          ? BorderSide(color: AppColors.error, width: 2)
                          : null,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text.rich(
                          TextSpan(
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: AppColors.base100,
                                  height: 1.35,
                                ),
                            children: [
                              const TextSpan(text: 'Согласие с '),
                              TextSpan(
                                text: 'обработкой персональных данных',
                                style: linkStyle,
                                recognizer: _onPersonalDataTap,
                              ),
                              const TextSpan(text: ' и '),
                              TextSpan(
                                text: 'политикой безопасности',
                                style: linkStyle,
                                recognizer: _onSecurityPolicyTap,
                              ),
                            ],
                          ),
                        ),
                        if (formState.agreementError != null) ...[
                          const SizedBox(height: AppSpacing.xs),
                          Text(
                            formState.agreementError!,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(color: AppColors.error),
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
              if (formState.submitError != null) ...[
                const SizedBox(height: AppSpacing.md),
                Text(
                  formState.submitError!,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: AppColors.error),
                ),
              ],
              const SizedBox(height: AppSpacing.lg),
              FilledButton(
                onPressed: formState.isSubmitting ? null : _onSubmit,
                style: FilledButton.styleFrom(
                  backgroundColor: AppColors.accent,
                  foregroundColor: AppColors.white,
                  padding: const EdgeInsets.symmetric(vertical: AppSpacing.md),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: formState.isSubmitting
                    ? const SizedBox(
                        height: 22,
                        width: 22,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: AppColors.white,
                        ),
                      )
                    : const Text('Отправить заявку'),
              ),
            ],
          ),
        ),
      ),
    );

    final revealedForm = RevealWrap(
      key: widget.revealKey,
      variant: RevealEntranceVariant.fadeLayOnSurface,
      resetWhenLeavingViewport: true,
      child: formCard,
    );

    final content = Wrap(
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.start,
      spacing: pad * 10,
      runSpacing: pad,
      children: [leftColumn, revealedForm],
    );

    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: viewportHeight),
      child: Stack(
        clipBehavior: Clip.hardEdge,
        children: [
          Positioned.fill(
            child: ClipRect(
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
                child: Image.asset(
                  AppImages.blackKitchen,
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: ColoredBox(color: Colors.black.withValues(alpha: 0.42)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: pad,
              vertical: verticalPad,
            ),
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: contentMinHeight),
              child: Center(child: content),
            ),
          ),
        ],
      ),
    );
  }
}
