import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.hintText,
      required this.textInputType,
      this.suffixicon});

  final String hintText;
  final TextInputType textInputType;
  final Widget? suffixicon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      decoration: InputDecoration(
        suffixIcon: suffixicon,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color(0xFF949D9E),
          fontSize: 13,
          fontFamily: 'Cairo',
          fontWeight: FontWeight.w700,
          height: 0,
        ),
        filled: true,
        fillColor: const Color(0xFFF9FAFA),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(
              color: Color(0xFFE6E9E9),
            )),
      ),
    );
  }
}
