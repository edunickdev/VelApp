import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vel_app/presentation/user/models/user_model.dart';


final titleAppbarProvider = StateProvider<String>(( ref ) => '');

final statusInfoBasicProvider = StateProvider<bool>(( ref ) => false);
final statusInfoMedicProvider = StateProvider<bool>(( ref ) => false);
final statusInfoHabitsProvider = StateProvider<bool>(( ref ) => false);

final horaSeleccionadaProvider = StateProvider<int>(( ref ) => 1);
final diaSeleccionadoProvider = StateProvider<String>(( ref ) => 'Lunes');
final cantDiasEntrenamientoProvider = StateProvider<int>((ref) => 1);
final listaDiasEntrenamientoProvider = StateProvider<List<String>>((ref) {
  final numberOfDropdowns = ref.watch(cantDiasEntrenamientoProvider);
  return List.generate(numberOfDropdowns, (index) => 'Lunes');
});

final listaGenerosProvider = StateProvider<ListaGeneros>(( ref ) {
  return ListaGeneros.masculino;
} );


