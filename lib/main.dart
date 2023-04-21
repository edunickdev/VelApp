import 'package:flutter/material.dart';
import 'package:vel_app/config/theme/app_theme.dart';
import 'package:vel_app/presentation/login_signin/screens/login_screen.dart';
import 'package:vel_app/presentation/login_signin/screens/signin_screen.dart';
import 'package:vel_app/presentation/main/screens/home_page.dart/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 2).theme(),
      title: 'VelApp',
      initialRoute: '/home',
      routes: {
        '/login' :(context) => const LoginScreen(),
        '/home' :(context) => const HomePage(),
        '/signin' :(context) => const SignInScreen()
      },
      home: const LoginScreen(),
    );
  }
}

