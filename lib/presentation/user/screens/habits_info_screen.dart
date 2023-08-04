import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vel_app/presentation/shared/widgets/custom_text_input.dart';
import 'package:vel_app/presentation/user/providers/user_providers.dart';

class InfoHabitsScreen extends ConsumerWidget {
  static String name = 'habits';

  const InfoHabitsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String titleAppbar = ref.watch(titleAppbarProvider);
    final List<int> horasEntrenamiento = [1, 2, 3, 4, 5];
    final int horaSeleccionada = ref.watch(horaSeleccionadaProvider);
    final String diaSeleccionado = ref.watch(diaSeleccionadoProvider);
    final List<String> diasSemana = ['Lunes', 'Martes', 'Miercoles', 'Jueves', 'Viernes', 'Sábado'];

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
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 35),
                child: CustomTextInput(
                  'Ingrese la cantidad de días a entrenar en la semana',
                  heightCursor: 23,
                  keyboardType: TextInputType.number,
                  alignText: TextAlign.left,
                  customIcon: Icon(Icons.calendar_today),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Row(
                  children: [
                    const Expanded(
                        child: Text('Selecciona un día que deseas entrenar')),
                    DropdownButton(
                      value: diaSeleccionado,
                      items: diasSemana
                          .map((dia) =>
                              DropdownMenuItem(
                                value: dia, 
                                child: Text(dia)))
                          .toList(),
                      onChanged: ( value ) {
                        ref.read(diaSeleccionadoProvider.notifier).state = value!;
                      },
                    ),
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
