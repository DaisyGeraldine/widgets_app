import 'package:flutter/material.dart';

class SnackBarScreen extends StatelessWidget {

  static String name = 'Snackbar.screen';

  const SnackBarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {

    ScaffoldMessenger.of(context).clearSnackBars();

    final snakbar = SnackBar(
      content: const Text('Hello from SnackBar'),
      action: SnackBarAction(
        label: 'Close',
        onPressed: () {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
        },
      ),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snakbar);

  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar Screen'),
      ),

      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Show SnackBar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () {
          showCustomSnackbar(context);
        },
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     ScaffoldMessenger.of(context).showSnackBar(
      //       SnackBar(
      //         content: const Text('Hello from SnackBar'),
      //         duration: const Duration(seconds: 2),
      //         action: SnackBarAction(
      //           label: 'Close',
      //           onPressed: () {
      //             ScaffoldMessenger.of(context).hideCurrentSnackBar();
      //           },
      //         ),
      //       ),
      //     );
      //   },
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}