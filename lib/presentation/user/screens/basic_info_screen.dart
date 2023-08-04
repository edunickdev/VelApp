// pido informacion basica como, altura, edad, genero, peso

import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:vel_app/presentation/shared/widgets/custom_text_input.dart';
import 'package:vel_app/presentation/user/providers/user_providers.dart';
import 'package:vel_app/presentation/user/widgets/custom_segmented_button.dart';

class InfoBasicScreen extends ConsumerWidget {
  static String name = 'basics';

  const InfoBasicScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String titleAppbar = ref.watch(titleAppbarProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(titleAppbar),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(1),
        child: FloatingActionButton(
          child: const Icon(Icons.save_outlined),
          onPressed: () {},
        ),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(5),
        child: Form(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 80,
                  child: Icon(Icons.camera_alt_outlined),
                ),
                SizedBox(height: 30),
                CustomTextInput('Ingresa tu altura',
                    heightCursor: 23,
                    keyboardType: TextInputType.number,
                    alignText: TextAlign.left,
                    customIcon: Icon(Icons.height_outlined)),
                SizedBox(height: 30),
                CustomTextInput('Ingresa tu peso',
                    heightCursor: 23,
                    keyboardType: TextInputType.number,
                    alignText: TextAlign.left,
                    customIcon: Icon(Icons.monitor_weight)),
                SizedBox(height: 30),
                CustomSegmentedButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
