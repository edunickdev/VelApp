import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  static String name = 'home-page';

  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'VelApp',
          style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
      body: const Center(
        child: Text('Hello World'),
      ),
    );
  }
}
