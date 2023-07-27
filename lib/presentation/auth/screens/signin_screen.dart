import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vel_app/presentation/shared/widgets/custom_text_input.dart';

class SignInScreen extends StatelessWidget {

  static String name = 'sign-in'; 

  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {

    TextEditingController? passwordController;
    TextEditingController? confirmPasswordController;


    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Register', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold ),),
              const SizedBox(height: 30,),
              const CustomTextInput(
                  'Your name',
                  heightCursor: 25,
                  keyboardType: TextInputType.name,
                  alignText: TextAlign.center,
                  customIcon: Icon(Icons.person),
                  validations: [
                    maxValidLenght35,
                    minValidLenght8,
                  ],
                  ),
              const SizedBox(height: 15,),
              const CustomTextInput(
                  'Your email',
                  heightCursor: 25,
                  keyboardType: TextInputType.emailAddress,
                  alignText: TextAlign.center,
                  customIcon: Icon(Icons.email),
                  validations: [
                    isEmail,
                  ],
                  ),
              const SizedBox(height: 15,),
              CustomTextInput(
                  'Your password',
                  heightCursor: 25,
                  keyboardType: TextInputType.name,
                  alignText: TextAlign.center,
                  customIcon: const Icon(Icons.password_outlined),
                  password: true,
                  controller: passwordController,
                  validations: const [
                    maxValidLenght8,
                    minValidLenght5,
                    atLeast1Mayus,
                    atLeast1Num,
                    atLeast1SpecialChar
                  ],
                  ),
              const SizedBox(height: 15,),
              CustomTextInput(
                  'Confirm your password',
                  heightCursor: 25,
                  keyboardType: TextInputType.name,
                  alignText: TextAlign.center,
                  customIcon: const Icon(Icons.password_outlined),
                  password: true,
                  controller: confirmPasswordController,
                  validations: const [
                    samePass
                  ],
                  ),
              const SizedBox(height: 30,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                    onPressed: () {
                      context.pushNamed('/login');
                    },
                    icon: const Icon(Icons.save),
                    label: const Text('Register', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
