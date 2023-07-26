import 'package:flutter/material.dart';
import 'package:vel_app/config/theme/app_theme.dart';

import 'config/router/app_router.dart';

void main() => runApp(const MyApp());

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

