import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:icon_decoration/icon_decoration.dart';

import 'test_utils/base_widget.dart';
import 'test_utils/custom_golden.dart';

void main() {
  group('Golden tests', () {
    customGoldenTest('base test', (tester) async {
      tester.binding.window.physicalSizeTestValue = const Size.square(352);
      await tester.pumpWidget(generateBaseApp(child: baseWidget));
      addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
    });

    customGoldenTest('default with white background', (tester) async {
      tester.binding.window.physicalSizeTestValue = const Size.square(100);
      await tester.pumpWidget(
        generateBaseApp(
          child: const Center(
            child: DecoratedIcon(
              child: Icon(
                Icons.home,
                color: Colors.red,
              ),
              shadows: [Shadow(blurRadius: 3)],
            ),
          ),
          backgroundColor: Colors.white,
        ),
      );
      addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
    });

    customGoldenTest(
      'Issue #3: all_inclusive_outlined',
      (tester) async {
        tester.binding.window.physicalSizeTestValue = const Size.square(100);
        await tester.pumpWidget(generateBaseApp(
          backgroundColor: Colors.black,
          child: const Center(
            child: DecoratedIcon(
              child: Icon(Icons.all_inclusive_outlined),
              shadows: [Shadow(color: Colors.cyan, blurRadius: 3)],
            ),
          ),
        ));
        addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
      },
    );

    customGoldenTest('Offset: 0, 6', (tester) async {
      tester.binding.window.physicalSizeTestValue = const Size.square(150);
      await tester.pumpWidget(
        generateBaseApp(
          child: const Center(
            child: DecoratedIcon(
              child: Icon(Icons.home, color: Colors.red),
              shadows: [Shadow(blurRadius: 3, offset: Offset(0, 6))],
            ),
          ),
          backgroundColor: Colors.white,
        ),
      );
      addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
    });

    customGoldenTest('Offset: 3, 0', (tester) async {
      tester.binding.window.physicalSizeTestValue = const Size.square(100);
      await tester.pumpWidget(
        generateBaseApp(
          child: const Center(
            child: DecoratedIcon(
              child: Icon(Icons.home, color: Colors.red),
              shadows: [Shadow(blurRadius: 3, offset: Offset(3, 0))],
            ),
          ),
          backgroundColor: Colors.white,
        ),
      );
      addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
    });
  });
}
