
import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {

  static String name = 'Progress.screen';

  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              'Circular Progress Indicator',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(
              height: 10,
            ),
            CircularProgressIndicator(
              strokeWidth: 2,
              backgroundColor: Colors.grey,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Linear Progress Indicator',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(
              height: 10,
            ),
            _ControlledProgresIndicator(),
          ],
        ),
      ),
    );
  }
}

class _ControlledProgresIndicator extends StatelessWidget {
  const _ControlledProgresIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic( Duration(milliseconds: 300), (value) {
        return (value * 2) / 100; //0.0, 1.0
      }).takeWhile((value) => value < 100),
      builder: (context, snapshot) {
        final progressValue = snapshot.data ?? 0;
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                strokeWidth: 2,
                backgroundColor: Colors.grey,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                value: progressValue,
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: LinearProgressIndicator(
                  minHeight: 10,
                  backgroundColor: Colors.grey,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                  value: progressValue,
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}