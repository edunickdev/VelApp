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
                    customIcon: Icon(Icons.email_outlined),
                  ),
                  const CustomTextInput(
                    'Your password',
                    heightCursor: 25,
                    keyboardType: TextInputType.text,
                    alignText: TextAlign.center,
                    password: true,
                    customIcon: Icon(Icons.password_outlined),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // una vez configurada la autenticación debería
                        // ser popAndPushNamed
                        Navigator.pushNamed(context, '/home');
                      },
                      child: const Text(
                        'Log in',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  OutlinedButton(
                    style: ButtonStyle(
                        alignment: Alignment.center,
                        backgroundColor: MaterialStatePropertyAll(
                            Theme.of(context).hoverColor)),
                    onPressed: () {
                      Navigator.pushNamed(context, '/signin');
                    },
                    child: const Text(
                      'new here? register.',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
