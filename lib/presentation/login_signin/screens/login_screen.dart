import 'package:flutter/material.dart';
import 'package:vel_app/presentation/login_signin/widgets/custom_text_input.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Log In')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              'Welcome to \n VelApp',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Form(
              child: Column(
                children: [
                  const CustomTextInput(
                    'User email',
                    autofocus: true,
                    heightCursor: 25,
                    keyboardType: TextInputType.emailAddress,
                    alignText: TextAlign.center,
                  ),
                  const CustomTextInput(
                    'Your password',
                    heightCursor: 25,
                    keyboardType: TextInputType.text,
                    alignText: TextAlign.center,
                    password: true,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.popAndPushNamed(context, '/home');
                        },
                        child: const Text(
                          'Log in',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ))
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signin');
              },
              child: const Text(
                'new here? register here',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
