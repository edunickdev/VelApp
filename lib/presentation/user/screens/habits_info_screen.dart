import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:vel_app/presentation/shared/shared_widgets.dart';
import 'package:vel_app/presentation/user/providers/user_providers.dart';

class InfoHabitsScreen extends ConsumerWidget {
  static String name = 'habits';

  const InfoHabitsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final String cantDiasEntrenamiento = ref.watch(cantDiasEntrenamientoProvider).toString();
    final String titleAppbar = ref.watch(titleAppbarProvider);
    final List<int> horasEntrenamiento = [1, 2, 3, 4, 5];
    final int horaSeleccionada = ref.watch(horaSeleccionadaProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(titleAppbar),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Row(
                  children: [
                    const Expanded(
                        child: Text(
                            'Elige la cantidad de horas que desea entrenar a la semana.')),
                    const SizedBox(width: 30),
                    DropdownButton(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      value: horaSeleccionada,
                      items: horasEntrenamiento
                          .map((hora) => DropdownMenuItem(
                              value: hora,
                              child: Text(
                                  hora == 1 ? '$hora hora' : '$hora horas')))
                          .toList(),
                      onChanged: (value) {
                        ref.read(horaSeleccionadaProvider.notifier).state = value!;
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: CustomTextInput(
                  initialValue: cantDiasEntrenamiento,
                  'Ingrese la cantidad de días a entrenar en la semana',
                  heightCursor: 23,
                  keyboardType: TextInputType.number,
                  alignText: TextAlign.left,
                  customIcon: const Icon(Icons.calendar_today),
                  onChange: (value) {
                    final valueParsed = int.tryParse(value);
                    if (valueParsed == 0 || valueParsed == null) {
                      ref.read(cantDiasEntrenamientoProvider.notifier).state = 1;
                    }
                    if (valueParsed != null) {
                      ref.read(cantDiasEntrenamientoProvider.notifier).state = valueParsed;
                    }
                  },
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Column(
                  children: [
                    const Text('De acuerdo al valor ingresado en el punto anterior, seleccione el o los días que tendra disponible para entrenar'),
                    DynamicDropDownButtons(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

