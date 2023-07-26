import 'package:flutter/material.dart' show Icons, IconData;

class CustomTile {
  
  final String titulo;
  final IconData icono;
  final String detalle;
  final String ruta;
  final bool status = false;
  
  CustomTile({ required this.ruta, required this.titulo, required this.icono, required this.detalle});
}

final listInfo = <CustomTile>[
  CustomTile(
    titulo: 'Información básica',
    icono: Icons.insert_drive_file_outlined,
    detalle: 'Información básica sobre el usuario, útil para conocerte mejor.',
    ruta: '/basics'),
  CustomTile(
    titulo: 'Información Médica', 
    icono: Icons.medical_services, 
    detalle: 'Información reelevante, importante para tomar decisiones de cara al entrenamiento.',
    ruta: '/medics'),
  CustomTile(
    titulo: 'Habitos',
    icono: Icons.timeline_rounded,
    detalle: 'Información clave para definir el mejor momento para entrenar.',
    ruta: '/habits'),
];