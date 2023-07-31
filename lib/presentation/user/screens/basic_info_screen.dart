// pido informacion basica como, altura, edad, genero, peso

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vel_app/presentation/shared/widgets/custom_text_input.dart';
import 'package:vel_app/presentation/user/models/user_model.dart';
import 'package:vel_app/presentation/user/providers/user_providers.dart';

class InfoBasicScreen extends ConsumerWidget {

  static String name = 'basics';

  // final String title;pereme

  const InfoBasicScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final String titleAppbar = ref.watch(titleAppbarProvider);
    final generos = ref.watch(listGenerosProvider);
    
    return Scaffold(
      appBar: AppBar(
        title: Text(titleAppbar),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(5),
        child: Form(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: const Card(
                    child: Icon( Icons.camera_alt_outlined ),
                  )
                ) ,
                const CustomTextInput('Ingresa tu altura',
                    heightCursor: 23,
                    keyboardType: TextInputType.number,
                    alignText: TextAlign.left,
                    customIcon: Icon(Icons.height_outlined)),
                const CustomTextInput('Ingresa tu peso',
                    heightCursor: 23,
                    keyboardType: TextInputType.number,
                    alignText: TextAlign.left,
                    customIcon: Icon(Icons.monitor_weight)),
                const SizedBox(height: 30),
                SegmentedButton(
                  segments: const [
                    ButtonSegment(value: ListaGeneros.masculino, icon: Icon(Icons.man_2_outlined), label: Text('Hombre')),
                    ButtonSegment(value: ListaGeneros.femenino, icon: Icon(Icons.girl_outlined), label: Text('Mujer')),
                  ],
                  selected: <ListaGeneros>{ generos },
                ),
                const SizedBox(height: 30),
                TextButton.icon(
                  onPressed: () {
                  return ;
                }, icon: const Icon(Icons.date_range_outlined), label: const Text('Fecha de nacimiento'),),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
