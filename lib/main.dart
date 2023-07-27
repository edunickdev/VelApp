import 'package:flutter/material.dart';
import 'package:vel_app/config/theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'config/router/app_router.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 2).theme(),
      title: 'VelApp',
    );
  }
}

