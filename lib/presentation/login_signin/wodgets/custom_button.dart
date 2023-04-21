import 'package:flutter/material.dart';

class CustomTextInput extends StatelessWidget {
  final bool autofocus;
  final double heightCursor;
  final TextInputType keyboardType;
  final TextAlign alignText;
  final bool shadow;

  const CustomTextInput({super.key, 
      this.autofocus = false,
      required this.heightCursor,
      required this.keyboardType,
      required this.alignText, 
      required this.shadow 
    });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autofocus,
      cursorHeight: heightCursor,
      keyboardType: keyboardType,
      textAlign: alignText,
      obscureText: true,
    );
  }
}
