// en esta pantalla se solicitara al paciente informacion relacionada con enfermades padecidas y antecedentes medicos

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vel_app/presentation/user/providers/user_providers.dart';

class InfoMedScreen extends ConsumerWidget {

  static String name = 'medics';

  const InfoMedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    
    final String titleAppbar = ref.watch(titleAppbarProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(titleAppbar),
      ),
      body: const SingleChildScrollView(
        child: Text('data'),
      ),
    );
  }
}