import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vel_app/presentation/user/providers/user_providers.dart';

class DynamicDropDownButtons extends ConsumerWidget {
  
  final List<String> diasSemana = [ 'Lunes', 'Martes', 'Miercoles', 'Jueves', 'Viernes', 'Sábado' ];

  DynamicDropDownButtons({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int cantDiasEntrenamiento = ref.watch(cantDiasEntrenamientoProvider);
    final List<String> listaDiasEntrenamiento = ref.watch(listaDiasEntrenamientoProvider);

    List<DropdownButton<String>> listaBotones = [];

    for (int i = 0; i < cantDiasEntrenamiento; i++) {
      listaBotones.add(DropdownButton<String>(
        value: listaDiasEntrenamiento[i],
        items: diasSemana
            .map((dia) => DropdownMenuItem(value: dia, child: Text(dia)))
            .toList(),
        onChanged: (value) {
          ref.read(listaDiasEntrenamientoProvider.notifier).state = [
            ...listaDiasEntrenamiento
          ]..[i] = value!;
        },
      ));
    }

    return Column(
      children: listaBotones,
    );
  }
}
