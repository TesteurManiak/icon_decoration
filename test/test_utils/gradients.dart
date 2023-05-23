import 'package:flutter/material.dart';

class RainbowGradient extends LinearGradient {
  const RainbowGradient()
      : super(
          colors: const [
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
}

class FlutterGradient extends LinearGradient {
  const FlutterGradient()
      : super(
          colors: const [
            Color.fromARGB(255, 66, 165, 245),
            Color.fromARGB(255, 13, 71, 161),
          ],
        );
}

class FadeOutGradient extends LinearGradient {
  const FadeOutGradient()
      : super(
          colors: const [
            Colors.white,
            Color.fromRGBO(255, 255, 255, 0),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
}
