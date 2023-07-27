// esta sera la pantalla principal que solicitara por secciones, info del paciente, sera validadora, pues no debe permitir ir a la pagina principal de la app
// mientras el paciente no ingrese toda la info necesaria para hacer una labor correcta por parte del entrenador.

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:vel_app/presentation/user/providers/user_providers.dart';
import 'package:vel_app/presentation/user/widgets/sections_info.dart';

class NewUserScreen extends StatelessWidget {
  
  static String name = 'requisite';

  const NewUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true),
      body: ListView.builder(
        itemCount: listInfo.length,
        itemBuilder: (context, index) {
          final item = listInfo[index];
          return _CustomTilewidget(itemTile: item);
        } 
      ),
    );
  }
}


class _CustomTilewidget extends ConsumerWidget {
  
  final CustomTile _itemTile;
  
  const _CustomTilewidget({required CustomTile itemTile}) : _itemTile = itemTile;

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return ListTile(
      leading: Icon(_itemTile.icono),
      title: Text(_itemTile.titulo),
      subtitle: Text(_itemTile.detalle),
      trailing: _itemTile.status ? const Icon(Icons.check_box) : const Icon(Icons.check_box_outline_blank),
      onTap: () {
        ref.read(titleAppbarProvider.notifier).update((state) => state = _itemTile.titulo);
        context.push(_itemTile.ruta);
      }
    );
  }
}
