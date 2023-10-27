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

  void openDialog (BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: const Text('You are sure you want to open this dialog?'),
          content: const Text('Dialog Content is available at https and will be available at http in the future.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),

            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Acept'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar y dialogs'),
      ),

      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              'Snackbar',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                showCustomSnackbar(context);
              },
              child: const Text('Show Snackbar'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Dialogs',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(
              height: 10,
            ),
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  applicationIcon: const FlutterLogo(),
                  applicationName: 'Flutter Demo',
                  applicationVersion: '1.0.0',
                  applicationLegalese: '© 2021 The Flutter Team',
                  children: [
                    const Text('This is a demo app for the Flutter framework.'),
                  ],
                );
              },
              child: const Text('Show Licenses'),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                openDialog(context);
                // showDialog(
                //   context: context,
                //   builder: (context) {
                //     return AlertDialog(
                //       title: const Text('Dialog Title'),
                //       content: const Text('Dialog Content'),
                //       actions: [
                //         TextButton(
                //           onPressed: () {
                //             Navigator.of(context).pop();
                //           },
                //           child: const Text('Close'),
                //         ),
                //       ],
                //     );
                //   },
                // );
              },
              child: const Text('Show Dialog'),
            ),
          ],
        ),
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