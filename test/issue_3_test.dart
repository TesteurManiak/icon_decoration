import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:icon_decoration/icon_decoration.dart';

import 'test_utils/gradients.dart';

void main() {
  group('Goldens Issue #3', () {
    goldenTest(
      "IconDecoration's gradient property doesn't work anymore",
      fileName: 'issue_3',
      widget: GoldenTestGroup(
        children: [
          GoldenTestScenario(
            name: 'with rainbow gradient',
            child: const DecoratedIcon(
              icon: Icon(Icons.all_inbox, size: 50),
              decoration: IconDecoration(
                gradient: rainbowGradient,
              ),
            ),
          ),
          GoldenTestScenario(
            name: 'same rainbow gradient',
            child: const DecoratedIcon(
              icon: Icon(Icons.all_inbox, size: 50),
              decoration: IconDecoration(
                gradient: rainbowGradient,
              ),
            ),
          ),
        ],
      ),
    );
  });
}
