import 'package:flutter/material.dart';

import '../core/constants/app_constant_imports.dart';


class AppTextField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final void Function(String)? onSubmitted;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String hintText;
  final String? labelText;
  final bool obscureText;
  final TextInputType? keyboardType;
  final FocusNode? focusNode;

  const AppTextField(
      {Key? key,
      this.controller,
      this.focusNode,
      this.textInputAction,
      this.onSubmitted,
      this.validator,
      this.prefixIcon,
      this.suffixIcon,
      required this.hintText,
      this.labelText,
      this.obscureText = false,
      this.keyboardType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [],
      ),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        onFieldSubmitted: onSubmitted,
        focusNode: focusNode,
        textInputAction: textInputAction,
        validator: validator,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
              color: AppColor.primary.withOpacity(0.1),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
              color: AppColor.primary.withOpacity(0.1),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
              color: AppColor.primary.withOpacity(0.1),
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide:
                BorderSide(color: AppColor.red, width: AppDimension.tiny * 0.5),
          ),
          hintStyle: AppTextStyle.body1,
          labelStyle: AppTextStyle.body1,
          contentPadding: const EdgeInsets.only(
              top: 24,
              bottom: 16,
              right: AppDimension.big,
              left: AppDimension.big),
          fillColor: AppColor.primary.withOpacity(0.1),
          filled: true,
          hintText: hintText,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          prefixIconConstraints: const BoxConstraints(
            minWidth: 64,
          ),
          labelText: labelText,
        ),
      ),
    );
  }
}
