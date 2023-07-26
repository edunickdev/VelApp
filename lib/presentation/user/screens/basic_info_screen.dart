// pido informacion basica como, altura, edad, genero, peso

import 'package:flutter/material.dart';
import 'package:vel_app/presentation/user/widgets/sections_info.dart';

class InfoBasicScreen extends StatelessWidget {

  static String name = 'basics';

  final String title;

  const InfoBasicScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ,
      ),
      body: SingleChildScrollView(
        child: Text('data'),
      ),
    );
  }
}
