import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:icon_decoration/icon_decoration.dart';

import 'test_utils/gradients.dart';

void main() {
  group('Goldens Gradients', () {
    goldenTest(
      'Gradient default',
      fileName: 'gradient_default',
      widget: GoldenTestScenario(
        name: 'default',
        child: const DecoratedIcon(
          icon: Icon(Icons.all_inbox, size: 50),
          decoration: IconDecoration(
            gradient: rainbowGradient,
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
    );

    goldenTest(
      'Gradient with border',
      fileName: 'gradient_border',
      widget: GoldenTestScenario(
        name: 'with border',
        child: const DecoratedIcon(
          icon: Icon(Icons.all_inbox, size: 50),
          decoration: IconDecoration(
            gradient: rainbowGradient,
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
    );
  });
}
