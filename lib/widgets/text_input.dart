import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  const TextInput({
    super.key,
    required this.validator,
    required this.controller,
    required this.hintText,
    this.obscureText = false,
    this.margin = EdgeInsets.zero,
  });

  final String? Function(String?)? validator;
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: TextFormField(
        validator: validator,
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: Colors.blue.shade800,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}