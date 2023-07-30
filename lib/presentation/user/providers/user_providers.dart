import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vel_app/presentation/user/models/user_model.dart';


final titleAppbarProvider = StateProvider<String>((ref) => '');

final statusInfoBasicProvider = StateProvider<bool>((ref) => false);
final statusInfoMedicProvider = StateProvider<bool>((ref) => false);
final statusInfoHabitsProvider = StateProvider<bool>((ref) => false);

final listGenerosProvider = Provider<List<String>>((ref) => generos );
final generoSeleccionadoProvider = StateProvider((ref) => 'Seleccionar genero');

