import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final String hintText;
  final TextStyle? hintstyle;
  final TextEditingController? controller;
  final bool obscureText;
  final bool readOnly;

  final BorderRadius? borderRadiu;
  final InputDecoration? decoration;
  final TextInputAction? textInputAction;
  final TextInputType? keyBoardType;
  final IconButton? suffixIcon;
  final Icon? prefixIcon;
  final FocusNode? focusNode;

  final TextStyle? textStyle;
  final Function(String)? onFieldSubmitted;

  CustomTextField({
    this.onChanged,
    this.hintstyle,
    this.decoration,
    this.borderRadiu,
    this.textStyle,
    this.validator,
    required this.hintText,
    this.controller,
    this.obscureText = false,
    this.readOnly = false,
    this.textInputAction,
    this.prefixIcon,
    this.keyBoardType,
    this.suffixIcon,
    this.focusNode,
    this.onFieldSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TextFormField(
      key: Key(hintText),
      textInputAction: textInputAction,
      keyboardType: keyBoardType,
      readOnly: readOnly,
      onChanged: onChanged,
      validator: validator,
      controller: controller,
      obscureText: obscureText,
      style: textStyle,
      onFieldSubmitted: onFieldSubmitted,
      focusNode: focusNode,
      obscuringCharacter: "*",
      decoration: InputDecoration(
          hintStyle: hintstyle,
          focusedBorder: OutlineInputBorder(
              borderRadius: borderRadiu as BorderRadius,
              borderSide: const BorderSide(color: Color(0xffE8E8E8), width: 1)),
          enabledBorder: OutlineInputBorder(
              borderRadius: borderRadiu as BorderRadius,
              borderSide: const BorderSide(color: Color(0xffE8E8E8), width: 1)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: borderRadiu as BorderRadius,
              borderSide: const BorderSide(color: Color(0xffE8E8E8), width: 1)),
          errorBorder: OutlineInputBorder(
              borderRadius: borderRadiu as BorderRadius,
              borderSide: const BorderSide(color: Color(0xffE8E8E8), width: 1)),
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(
              vertical: size.height * 0.02, horizontal: 20),
          labelText: hintText,
          labelStyle: hintstyle,
          border: InputBorder.none,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon),
    );
  }
}
