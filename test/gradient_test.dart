import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:icon_decoration/icon_decoration.dart';

import 'test_utils/gradients.dart';

void main() {
  group('Goldens Gradients', () {
    goldenTest(
      'Gradient rendering',
      fileName: 'gradient_rendering',
      widget: GoldenTestGroup(
        children: [
          GoldenTestScenario(
            name: 'rainbow gradient',
            child: const DecoratedIcon(
              icon: Icon(Icons.all_inbox, size: 50),
              decoration: IconDecoration(
                gradient: rainbowGradient,
              ),
            ),
          ),
          GoldenTestScenario(
            name: 'flutter gradient',
            child: DecoratedIcon(
              icon: const Icon(Icons.all_inbox, size: 50),
              decoration: IconDecoration(
                gradient: flutterGradient,
              ),
            ),
          ),
          GoldenTestScenario(
            name: 'fadeOut gradient',
            child: DecoratedIcon(
              icon: const Icon(Icons.all_inbox, size: 50),
              decoration: IconDecoration(
                gradient: fadeOut,
              ),
            ),
          ),
          GoldenTestScenario(
            name: 'with red shadows',
            child: const DecoratedIcon(
              icon: Icon(Icons.all_inbox, size: 50),
              decoration: IconDecoration(
                gradient: rainbowGradient,
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
          GoldenTestScenario(
            name: 'with default border',
            child: const DecoratedIcon(
              icon: Icon(Icons.all_inbox, size: 50),
              decoration: IconDecoration(
                gradient: rainbowGradient,
                border: IconBorder(),
              ),
            ),
          ),
          GoldenTestScenario(
            name: 'with border and shadows',
            child: const DecoratedIcon(
              icon: Icon(Icons.all_inbox, size: 50),
              decoration: IconDecoration(
                gradient: rainbowGradient,
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
        ],
      ),
    );
  });
}
