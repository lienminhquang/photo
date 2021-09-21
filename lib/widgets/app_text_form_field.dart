import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? initValue;
  final FormFieldValidator<String>? validator;
  final String? hintText;
  const AppTextFormField(
      {Key? key,
      this.controller,
      this.obscureText = false,
      this.initValue,
      this.validator,
      this.hintText})
      : super(key: key);
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            hintText: hintText,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.zero,
                borderSide: BorderSide(width: 2, color: Color(0XFF000000))),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.zero,
                borderSide: BorderSide(width: 2, color: Color(0XFF000000))),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.zero,
                borderSide: BorderSide(width: 2, color: Color(0XFF000000)))),
        style: Theme.of(context).textTheme.bodyText1,
        initialValue: initValue,
        validator: validator,
      ),
    );
  }
}
