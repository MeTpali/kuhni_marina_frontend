import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_spacing.dart';

/// Поле формы заявки: подпись сверху, ошибка под полем.
///
/// По умолчанию — линия только снизу. Если задан [border] (например
/// [OutlineInputBorder] для многострочного поля), используется [InputDecoration].
class DesignRequestFormField extends StatelessWidget {
  const DesignRequestFormField({
    required this.label,
    required this.controller,
    super.key,
    this.errorText,
    this.keyboardType,
    this.maxLines = 1,
    this.onChanged,
    this.formatters,
    this.readOnly = false,
    this.border,
  });

  final String label;
  final TextEditingController controller;
  final String? errorText;
  final TextInputType? keyboardType;
  final int maxLines;
  final ValueChanged<String>? onChanged;
  final List<TextInputFormatter>? formatters;
  final bool readOnly;

  /// Кастомная рамка ([OutlineInputBorder] и т.д.). `null` — только нижняя линия.
  final InputBorder? border;

  @override
  Widget build(BuildContext context) {
    final hasError = errorText != null && errorText!.isNotEmpty;

    final labelStyle = Theme.of(context).textTheme.titleLarge;

    final valueStyle = Theme.of(context).textTheme.bodyLarge;

    final errorStyle = Theme.of(
      context,
    ).textTheme.bodySmall?.copyWith(color: AppColors.error);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(label, style: labelStyle),
        const SizedBox(height: AppSpacing.xs),
        TextField(
          controller: controller,
          keyboardType: keyboardType,
          maxLines: maxLines,
          onChanged: onChanged,
          style: valueStyle,
          readOnly: readOnly,
          inputFormatters: formatters,
          decoration: InputDecoration(
            isDense: true,
            contentPadding: const EdgeInsets.all(AppSpacing.md),
            border: border ?? const UnderlineInputBorder(),
          ),
        ),
        if (hasError) ...[
          const SizedBox(height: AppSpacing.xs),
          Text(errorText!, style: errorStyle),
        ],
      ],
    );
  }
}
