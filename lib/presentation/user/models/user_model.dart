import 'package:flutter/material.dart';

enum ListaGeneros { masculino, femenino }

class User {
  final UserRegister userRegister;
  final UserBasicInfo userBasicInfo;

  const User(this.userRegister, this.userBasicInfo);
}

class UserRegister {
  final String nombres;
  final String apellidos;
  final String email;

  UserRegister({required this.nombres, required this.apellidos, required this.email});
}

class UserBasicInfo {

  final Image foto;
  final DateTime fechaNacimiento;
  final double altura;
  final double peso;
  final List<String> genero;
  int edad;

  UserBasicInfo({required this.genero, required this.fechaNacimiento, required this.altura, required this.peso, required this.edad, required this.foto,});

  int calcularEdad(){
    DateTime fechaActual = DateTime.now();
    edad = fechaActual.year - fechaNacimiento.year;
    return edad;
  }
}