import 'package:flutter/material.dart';

class CustomTextInput extends StatelessWidget {
  final String label;
  final bool autofocus;
  final double heightCursor;
  final TextInputType keyboardType;
  final TextAlign alignText;
  final bool password;

  const CustomTextInput(this.label, {super.key,
      this.autofocus = false,
      required this.heightCursor,
      required this.keyboardType,
      required this.alignText,
      this.password = false,
    });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autofocus,
      cursorHeight: heightCursor,
      keyboardType: keyboardType,
      textAlign: alignText,
      obscureText: password,
      decoration: InputDecoration(labelText: label),
    );
  }
}
