import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {

  static String name = 'Buttons.screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: Placeholder(),
    );
  }
}