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
      builder: () {
        return GoldenTestGroup(
          children: [
            GoldenTestScenario(
              name: 'rainbow gradient',
              child: const DecoratedIcon(
                icon: Icon(Icons.all_inbox, size: 50),
                decoration: IconDecoration(
                  gradient: RainbowGradient(),
                ),
              ),
            ),
            GoldenTestScenario(
              name: 'flutter gradient',
              child: const DecoratedIcon(
                icon: Icon(Icons.all_inbox, size: 50),
                decoration: IconDecoration(
                  gradient: FlutterGradient(),
                ),
              ),
            ),
            GoldenTestScenario(
              name: 'fadeOut gradient',
              child: const DecoratedIcon(
                icon: Icon(Icons.all_inbox, size: 50),
                decoration: IconDecoration(
                  gradient: FadeOutGradient(),
                ),
              ),
            ),
            GoldenTestScenario(
              name: 'with red shadows',
              child: const DecoratedIcon(
                icon: Icon(
                  Icons.all_inbox,
                  size: 50,
                  shadows: [
                    Shadow(
                      color: Colors.red,
                      blurRadius: 3,
                      offset: Offset(0, 2),
                    )
                  ],
                ),
                decoration: IconDecoration(
                  gradient: RainbowGradient(),
                ),
              ),
            ),
            GoldenTestScenario(
              name: 'with default border',
              child: const DecoratedIcon(
                icon: Icon(Icons.all_inbox, size: 50),
                decoration: IconDecoration(
                  gradient: RainbowGradient(),
                  border: IconBorder(),
                ),
              ),
            ),
            GoldenTestScenario(
              name: 'with border and shadows',
              child: const DecoratedIcon(
                icon: Icon(
                  Icons.all_inbox,
                  size: 50,
                  shadows: [
                    Shadow(
                      color: Colors.red,
                      blurRadius: 3,
                      offset: Offset(0, 2),
                    )
                  ],
                ),
                decoration: IconDecoration(
                  gradient: RainbowGradient(),
                  border: IconBorder(),
                ),
              ),
            ),
          ],
        );
      },
    );
  });
}
