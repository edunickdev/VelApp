import 'package:flutter/material.dart';
import 'package:vel_app/presentation/login_signin/wodgets/custom_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    autofocus: true,
                    heightCursor: 25,
                    keyboardType: TextInputType.emailAddress,
                    alignText: TextAlign.center,
                    shadow: false,
                  ),
                  const CustomTextInput(
                      autofocus: true,
                      heightCursor: 25,
                      keyboardType: TextInputType.text,
                      alignText: TextAlign.center,
                      shadow: true),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'Log in',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ))
                ],
              ),
            ),
            const Text('new here? register here', style: TextStyle(fontSize: 25),)
          ],
        ),
      ),
    );
  }
}
