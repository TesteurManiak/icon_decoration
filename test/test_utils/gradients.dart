import 'package:flutter/material.dart';

class RainbowGradient extends LinearGradient {
  const RainbowGradient()
      : super(
          colors: const [
            Colors.red,
            Colors.orange,
            Colors.yellow,
            Colors.green,
            Colors.blue,
            Colors.indigo,
            Colors.purple,
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
