import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vel_app/presentation/user/models/user_model.dart';
import 'package:vel_app/presentation/user/providers/user_providers.dart';

class CustomSegmentedButton extends ConsumerWidget {
  const CustomSegmentedButton({
    super.key,
  });


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    
    final generos = ref.watch( listaGenerosProvider );
    
    return SegmentedButton(
      segments: const [
        ButtonSegment(
            value: ListaGeneros.masculino,
            icon: Icon(Icons.man_2_outlined),
            label: Text('Hombre')),
        ButtonSegment(
            value: ListaGeneros.femenino,
            icon: Icon(Icons.girl_outlined),
            label: Text('Mujer')),
      ],
      selected: <ListaGeneros>{ generos },
      multiSelectionEnabled: false,
      emptySelectionAllowed: false,
      onSelectionChanged: ( genero ) {
        ref.read( listaGenerosProvider.notifier ).state = genero.first;
      },
    );
  }
}
