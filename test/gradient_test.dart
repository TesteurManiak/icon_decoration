import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:icon_decoration/icon_decoration.dart';

void main() {
  group('Goldens Gradients', () {
    const _rainbowGradient = LinearGradient(
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

    goldenTest(
      'Gradient default',
      fileName: 'gradient_default',
      widget: GoldenTestScenario(
        name: 'default',
        child: const DecoratedIcon(
          icon: Icon(Icons.all_inbox, size: 50),
          decoration: IconDecoration(
            gradient: _rainbowGradient,
          ),
        ),
      ),
    );

    goldenTest(
      'Gradient shadows',
      fileName: 'gradient_shadows',
      widget: GoldenTestScenario(
        name: 'with shadows',
        child: const DecoratedIcon(
          icon: Icon(Icons.all_inbox, size: 50),
          decoration: IconDecoration(
            gradient: _rainbowGradient,
            shadows: [
              Shadow(
                color: Colors.red,
                blurRadius: 3,
                offset: Offset(0, 2),
              )
            ],
          ),
        ),
      ),
    );

    goldenTest(
      'Gradient with border',
      fileName: 'gradient_border',
      widget: GoldenTestScenario(
        name: 'with border',
        child: const DecoratedIcon(
          icon: Icon(Icons.all_inbox, size: 50),
          decoration: IconDecoration(
            gradient: _rainbowGradient,
            border: IconBorder(),
          ),
        ),
      ),
    );

    goldenTest(
      'Gradient with border and shadows',
      fileName: 'gradient_border_shadows',
      widget: GoldenTestScenario(
        name: 'with border and shadows',
        child: const DecoratedIcon(
          icon: Icon(Icons.all_inbox, size: 50),
          decoration: IconDecoration(
            gradient: _rainbowGradient,
            border: IconBorder(),
            shadows: [
              Shadow(
                color: Colors.red,
                blurRadius: 3,
                offset: Offset(0, 2),
              )
            ],
          ),
        ),
      ),
    );
  });
}
