import 'package:auth_screens/theme/app_color.dart';
import 'package:auth_screens/theme/text_styles.dart';
import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final Widget? prefixIcon;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final InputBorder? errorBorder;
  final int? maxLines;

  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
    this.controller,
    required this.validator,
    this.prefixIcon,
    this.focusNode,
    this.onChanged,
    this.errorBorder,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return TextFormField(
      maxLines: maxLines,
      validator: validator,
      onChanged: onChanged,
      controller: controller,
      cursorColor: AppColor.kPrimaryColor,
      decoration: InputDecoration(
        isDense: true,
        contentPadding:
            contentPadding ??
            EdgeInsets.symmetric(horizontal: 10, vertical: 14),
        focusedBorder:
            focusedBorder ??
            UnderlineInputBorder(
              borderSide: BorderSide(color: AppColor.greyLight, width: 1),
            ),
        enabledBorder:
            enabledBorder ??
            UnderlineInputBorder(
              borderSide: BorderSide(color: AppColor.greyLight, width: 1),
            ),
        errorBorder:
            errorBorder ??
            UnderlineInputBorder(
              borderSide: BorderSide(color: colorScheme.error, width: 1),
            ),
        focusedErrorBorder:
            errorBorder ??
            UnderlineInputBorder(
              borderSide: BorderSide(color: colorScheme.error, width: 1),
            ),
        hintStyle: hintStyle ?? Styles.textStyle15,
        hintText: hintText,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
      ),
      focusNode: focusNode,
      obscureText: isObscureText ?? false,
      style:
          inputTextStyle ??
          Styles.textStyle16.copyWith(color: colorScheme.secondary),
    );
  }
}
