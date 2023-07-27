import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vel_app/presentation/user/providers/user_providers.dart';

class InfoHabitsScreen extends ConsumerWidget {

  static String name = 'habits';

  const InfoHabitsScreen({super.key});

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