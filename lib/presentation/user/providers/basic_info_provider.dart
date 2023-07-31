import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vel_app/presentation/user/models/user_model.dart';

final listaGenerosProvider = StateProvider((ref) => ListaGeneros);

final generoSeleccionado =
    StateNotifierProvider<GeneroListNotifier, UserBasicInfo>(
        (ref) => GeneroListNotifier());

class GeneroListNotifier extends StateNotifier<UserBasicInfo> {

  GeneroListNotifier()
      : super(
          UserBasicInfo(
              genero: listaGenerosProvider as List<String>,
              fechaNacimiento: DateTime.now(),
              altura: 168,
              peso: 71,
              edad: 32,
              foto: const Placeholder() as Image),
        );
}
