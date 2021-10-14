import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:icon_decoration/icon_decoration.dart';

import 'test_utils/base_widget.dart';
import 'test_utils/custom_golden.dart';

void main() {
  group('Goldens Gradients', () {
    const _rainbowGradient = LinearGradient(colors: [
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
    ]);

    customGoldenTest('Base gradient', (tester) async {
      tester.binding.window.physicalSizeTestValue = const Size.square(100);
      await tester.pumpWidget(
        generateBaseApp(
          child: const Center(
            child: DecoratedIcon(
              icon: Icon(Icons.all_inbox),
              decoration: IconDecoration(
                gradient: _rainbowGradient,
              ),
            ),
          ),
        ),
      );
    });

    customGoldenTest('Gradient with shadows', (tester) async {
      tester.binding.window.physicalSizeTestValue = const Size.square(100);
      await tester.pumpWidget(
        generateBaseApp(
          child: const Center(
            child: DecoratedIcon(
              icon: Icon(Icons.all_inbox),
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
        ),
      );
    });

    customGoldenTest('Gradient with border', (tester) async {
      tester.binding.window.physicalSizeTestValue = const Size.square(100);
      await tester.pumpWidget(
        generateBaseApp(
          child: const Center(
            child: DecoratedIcon(
              icon: Icon(Icons.all_inbox),
              decoration: IconDecoration(
                gradient: _rainbowGradient,
                border: IconBorder(),
              ),
            ),
          ),
        ),
      );
    });
  });
}
