import 'package:flutter/material.dart';

const rainbowGradient = LinearGradient(
  colors: [
    Colors.red,
    Colors.pink,
    Colors.purple,
    Colors.deepPurple,
    Colors.deepPurple,
    Colors.indigo,
    Colors.blue,
    Colors.lightBlue,
    Colors.cyan,
    Colors.teal,
    Colors.green,
    Colors.lightGreen,
    Colors.lime,
    Colors.yellow,
    Colors.amber,
    Colors.orange,
    Colors.deepOrange,
  ],
);

final flutterGradient = LinearGradient(
  colors: [
    Colors.blue.shade400,
    Colors.blue.shade900,
  ],
);

final fadeOut = LinearGradient(
  colors: [
    Colors.white,
    Colors.white.withAlpha(0),
  ],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);
