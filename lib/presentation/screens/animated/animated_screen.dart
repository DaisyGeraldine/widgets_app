import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {

  static String name = 'Animated.screen';

  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

  double width = 50;
  double height = 50;
  Color color = Colors.indigo;
  double borderRadius = 10;

  void changeShape() {
    final Random random = Random();
    setState(() {
      width = random.nextInt(300).toDouble() + 120;
      height = random.nextInt(300).toDouble() + 120;
      color = Colors.green;
      borderRadius = random.nextInt(100).toDouble() + 5;

      color = Color.fromRGBO(
        random.nextInt(255),
        random.nextInt(255),
        random.nextInt(255),
        1
      );

    });
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Screen'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 4),
          curve: Curves.elasticOut,
          width: width <= 0 ? 0 : width,
          height: height <= 0 ? 0 : height,
          decoration: BoxDecoration(
            color: color,
            borderRadius: borderRadius < 0 ? BorderRadius.circular(0) : BorderRadius.circular(borderRadius),
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          changeShape();
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}