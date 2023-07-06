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
  final TextEditingController? controller;

  const CustomTextInput(
    this.label, {
    super.key,
    this.autofocus = false,
    required this.heightCursor,
    required this.keyboardType,
    required this.alignText,
    this.password = false, 
    required this.customIcon, 
    required this.validations, 
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autofocus,
      cursorHeight: heightCursor,
      keyboardType: keyboardType,
      textAlign: alignText,
      obscureText: password,
      decoration: InputDecoration(labelText: label, prefixIcon: customIcon),
      validator: (value) {
        for (var validation in validationList) {
          if (!validation(value)) {
            return 'Invalid input';
          }
        }
        return null;
      },
    );
  }

  static List<Function> validationList = [
    maxValidLenght8,
    maxValidLenght10,
    maxValidLenght12,
    minValidLenght5,
    minValidLenght8,
    atLeast1Num,
    atLeast1Mayus,
    isEmail,
    atLeast1SpecialChar,
    samePass
  ];
}

  bool maxValidLenght8(String value) {
    if (value.length >= 8){
      return true;
    }
    return false;
  }

  bool maxValidLenght10(String value) {
    if (value.length >= 10){
      return true;
    }
    return false;
  }

  bool maxValidLenght12(String value) {
    if (value.length >= 12){
      return true;
    }
    return false;
  }

  bool maxValidLenght35(String value) {
    if (value.length >= 35){
      return true;
    }
    return false;
  }

  bool minValidLenght5(String value) {
    if (value.length >= 5) {
      return true;
    }
    return false;
  }

  bool minValidLenght8(String value) {
    if (value.length >= 8) {
      return true;
    }
    return false;
  }


  bool atLeast1Num(String value){
    RegExp regex = RegExp(r'\d');
    return regex.hasMatch(value);
  }

  bool isEmail(String value){
    RegExp regex = RegExp(r'@');
    return regex.hasMatch(value);
  }

  bool atLeast1SpecialChar(String value){
    RegExp regex = RegExp(r'[!@#$%^&*(),.?":{}|<>]');
    return regex.hasMatch(value) && !isEmail(value);
  }

  bool atLeast1Mayus(String value){
    RegExp regex = RegExp(r'[A-Z]');
    return regex.hasMatch(value);
  }

  bool samePass(TextEditingController controller, TextEditingController confirmController) {
    if (controller.text != confirmController.text) {
      return false;
    }
    return true;
  }

