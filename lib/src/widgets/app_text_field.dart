import 'package:flutter/material.dart';
import '../utils/app_styles.dart';

class AppTextFiled extends StatefulWidget {
  const AppTextFiled({Key? key,
    this.labelText = '',
    this.hintText = '',
    this.validator,
    this.keyboardType,
    this.controller,
    this.errorMessage,
    this.textAlign = TextAlign.start,
    this.maxLength ,
    this.prefixIcon,
    this.obscureText = false,
  }) : super(key: key);

  final String labelText;
  final String hintText;
  final String? errorMessage;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final bool obscureText;
  final TextAlign textAlign;
  final int? maxLength;
  final Icon? prefixIcon;
  final TextEditingController? controller;

  @override
  State<AppTextFiled> createState() => _AppTextFiledState();
}

class _AppTextFiledState extends State<AppTextFiled> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: widget.maxLength,
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      cursorColor: AppColors.black,
      obscureText: widget.obscureText,
      textAlign: widget.textAlign,
      decoration: InputDecoration(
          prefixIcon: widget.prefixIcon,
          counter: const SizedBox(),
          hintText: widget.hintText,
          labelText: widget.labelText,
          labelStyle: AppTextStyles.tfPlaceHolder,
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.black),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.black),
          ),
          border: const UnderlineInputBorder(
              borderSide: BorderSide(
                  color: AppColors.black)
          )
      ),
      style: AppTextStyles.tfInput,
    );
  }
}
