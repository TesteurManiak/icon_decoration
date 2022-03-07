import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:icon_decoration/icon_decoration.dart';

void main() {
  group('Goldens Borders', () {
    goldenTest(
      'Border rendering',
      fileName: 'border_rendering',
      widget: GoldenTestGroup(
        children: [
          GoldenTestScenario(
            name: 'default',
            child: const DecoratedIcon(
              icon: Icon(Icons.favorite, color: Colors.transparent, size: 50),
              decoration: IconDecoration(border: IconBorder()),
            ),
          ),
          GoldenTestScenario(
            name: 'with colorized icon',
            child: const DecoratedIcon(
              icon: Icon(Icons.favorite, color: Colors.green, size: 50),
              decoration: IconDecoration(border: IconBorder()),
            ),
          ),
          GoldenTestScenario(
            name: 'with shadows',
            child: const DecoratedIcon(
              icon: Icon(Icons.favorite, color: Colors.green, size: 50),
              decoration: IconDecoration(
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
