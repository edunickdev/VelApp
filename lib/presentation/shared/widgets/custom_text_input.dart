import 'package:flutter/material.dart';

class CustomTextInput extends StatelessWidget {
  final String label;
  final bool autofocus;
  final double heightCursor;
  final TextInputType keyboardType;
  final TextAlign alignText;
  final bool password;
  final Icon customIcon;
  final List<Function> validations;

  CustomTextInput(
    this.label, {
    super.key,
    this.autofocus = false,
    required this.heightCursor,
    required this.keyboardType,
    required this.alignText,
    this.password = false, 
    required this.customIcon, 
    required this.validations,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autofocus,
      cursorHeight: heightCursor,
      keyboardType: keyboardType,
      textAlign: alignText,
      obscureText: password,
      decoration:
          InputDecoration(labelText: label, prefixIcon: customIcon),
    );
  }

  // final validationList = [
  //   maxValidLenght,
  //   minValidLenght(value, numCharacters),
  //   atLeast1Num(value),
  //   atLeast1Mayus(value),
  //   isEmail(value),
  //   atLeast1SpecialChar(value)
  // ];

  bool maxValidLenght(String value, int numCharacters) {
    if (value.length >= numCharacters){
      return true;
    }
    return false;
  }

  bool minValidLenght(String value, int numCharacters) {
    if (value.length >= numCharacters) {
      return true;
    }
    return false;
  }

  bool atLeast1Num(String value){
    return false;
  }

  bool isEmail(String value){
    return false;
  }

  bool atLeast1SpecialChar(String value){
    return false;
  }

  bool atLeast1Mayus(String value){
    return false;
  }


}
