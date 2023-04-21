import 'package:flutter/material.dart';
import 'package:vel_app/presentation/login_signin/widgets/custom_text_input.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Register', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold ),),
            const SizedBox(height: 30,),
            const CustomTextInput('Your name',
                heightCursor: 25,
                keyboardType: TextInputType.name,
                alignText: TextAlign.center),
            const SizedBox(height: 15,),
            const CustomTextInput(
                'Your email',
                heightCursor: 25,
                keyboardType: TextInputType.emailAddress,
                alignText: TextAlign.center),
            const SizedBox(height: 15,),
            const CustomTextInput(
                'Your password',
                heightCursor: 25,
                keyboardType: TextInputType.name,
                alignText: TextAlign.center),
            const SizedBox(height: 15,),
            const CustomTextInput(
                'Confirm your password',
                heightCursor: 25,
                keyboardType: TextInputType.name,
                alignText: TextAlign.center),
            const SizedBox(height: 30,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.save),
                  label: const Text('Register', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)),
            )
          ],
        ),
      ),
    );
  }
}
