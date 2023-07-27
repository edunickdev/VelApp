// pido informacion basica como, altura, edad, genero, peso

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vel_app/presentation/shared/widgets/custom_text_input.dart';
import 'package:vel_app/presentation/user/providers/user_providers.dart';

class InfoBasicScreen extends ConsumerWidget {
  static String name = 'basics';

  // final String title;

  const InfoBasicScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final String titleAppbar = ref.watch(titleAppbarProvider);
    final List<String> listaGeneros = ref.watch( listGenerosProvider );
    final String generoSeleccionado = ref.watch( generoSeleccionadoProvider );

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
                const Row(
                  children: [
                    Expanded(
                        child: CustomTextInput('Ingresa tu altura',
                            heightCursor: 23,
                            keyboardType: TextInputType.number,
                            alignText: TextAlign.left,
                            customIcon: Icon(Icons.height_outlined))),
                    SizedBox(width: 30),
                    Expanded(
                        child: CustomTextInput('Ingresa tu peso',
                            heightCursor: 23,
                            keyboardType: TextInputType.number,
                            alignText: TextAlign.left,
                            customIcon: Icon(Icons.monitor_weight))),
                  ],
                ),
                DropdownButton<String>(
                  value: generoSeleccionado,
                  items: listaGeneros.map((genero) {
                    return DropdownMenuItem<String>(value: genero, child: Text(genero),);
                  }).toList(),
                  onChanged: (genero) {
                    if (genero != null) {
                      ref.read(generoSeleccionadoProvider.notifier).state = genero;
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
