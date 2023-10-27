import 'package:flutter/material.dart';

List<Color> colorList = [
  Colors.black,
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.yellow,
  Colors.pink,
  Colors.purple,
  Colors.orange,
  Colors.teal,
  Colors.cyan,
  Colors.brown,
  Colors.grey,
  Colors.blueGrey,
  Colors.lime,
  Colors.indigo,
  Colors.amber,
  Colors.lightBlue,
  Colors.lightGreen,
  Colors.deepOrange,
  Colors.deepPurple,
  Colors.deepPurpleAccent,
  Colors.lightBlueAccent,
  Colors.lightGreenAccent,
  Colors.redAccent,
  Colors.yellowAccent,
  Colors.pinkAccent,
  Colors.purpleAccent,
  Colors.orangeAccent,
  Colors.tealAccent,
  Colors.cyanAccent,
  Colors.brown,
  Colors.grey,
  Colors.blueGrey,
  Colors.lime,
  Colors.indigo,
  Colors.amber,
  Colors.lightBlue,
  Colors.lightGreen,
];

class Apptheme {
  final int selectedColor;

  Apptheme({
    this.selectedColor = 0,
  }):
  assert(selectedColor >= 0, 'selectedColor must be greater or equals than 0'),
  assert(selectedColor < colorList.length, 'selectedColor must be less than ${colorList.length}');
      
  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorSchemeSeed: colorList[selectedColor],
  );
}