import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants/app_colors.dart';

class AppTextField extends StatelessWidget {
  final double? height;
  final double? width;
  final double? minHeight;
  final double? maxHeight;
  final Widget? leading;
  final Widget? trailing;
  final double textSpacing;
  final EdgeInsets contentPadding;
  final TextStyle? textStyle;
  final String? hintText;
  final TextStyle? hintStyle;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? formatters;
  final bool readOnly;
  final Color backgroundColor;
  final VoidCallback? onTap;
  final bool autofocus;
  final BoxBorder? border;
  final FocusNode? focusNode;
  final bool multiLine;
  final AlignmentGeometry? fieldAlignment;

  const AppTextField({
    this.height,
    this.width,
    this.minHeight,
    this.maxHeight,
    this.leading,
    this.trailing,
    this.textSpacing = 0,
    this.contentPadding = const EdgeInsets.all(6),
    this.textStyle,
    this.hintText,
    this.hintStyle,
    this.controller,
    this.onChanged,
    this.onSubmitted,
    this.keyboardType,
    this.border,
    this.formatters,
    this.readOnly = false,
    this.backgroundColor = AppColors.base10,
    this.autofocus = false,
    this.onTap,
    this.focusNode,
    this.multiLine = false,
    this.fieldAlignment,
    super.key,
  });

  @override
  Widget build(BuildContext context) => SizedBox(
    height: height,
    width: width,
    child: DecoratedBox(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8),
        border: border,
      ),
      child: Align(
        alignment:
            fieldAlignment ??
            (multiLine ? Alignment.topLeft : Alignment.center),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: minHeight ?? 0,
            maxHeight: maxHeight ?? double.infinity,
          ),
          child: Padding(
            padding: contentPadding,
            child: TextField(
              autofocus: autofocus,
              focusNode: focusNode,
              onTap: onTap,
              readOnly: readOnly,
              controller: controller,
              onChanged: onChanged,
              onSubmitted: onSubmitted,
              style: textStyle,
              textAlignVertical: TextAlignVertical.center,
              inputFormatters: formatters,
              keyboardType: keyboardType,
              onTapOutside: (_) => focusNode?.unfocus(),
              maxLines: multiLine ? null : 1,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                isDense: true,
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: hintStyle,
                prefixIconConstraints: const BoxConstraints(
                  minHeight: 0,
                  minWidth: 0,
                ),
                prefixIcon: leading == null
                    ? null
                    : Padding(
                        padding: EdgeInsets.only(right: textSpacing),
                        child: leading,
                      ),
                suffixIconConstraints: const BoxConstraints(
                  minHeight: 0,
                  minWidth: 0,
                ),
                suffixIcon: trailing == null
                    ? null
                    : Padding(
                        padding: EdgeInsets.only(left: textSpacing),
                        child: trailing,
                      ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
