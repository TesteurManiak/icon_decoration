import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:icon_decoration/icon_decoration.dart';

import 'test_utils/base_widget.dart';
import 'test_utils/custom_golden.dart';

void main() {
  group('Golden Shadows', () {
    customGoldenTest('Shadow base widget', (tester) async {
      tester.binding.window.physicalSizeTestValue = const Size.square(352);
      await tester.pumpWidget(generateBaseApp(
        child: baseWidget,
        backgroundColor: Colors.black,
      ));
      addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
    });

    customGoldenTest('Default shadow', (tester) async {
      tester.binding.window.physicalSizeTestValue = const Size.square(100);
      await tester.pumpWidget(
        generateBaseApp(
          child: const Center(
            child: DecoratedIcon(
              icon: Icon(Icons.home, color: Colors.red),
              decoration: IconDecoration(shadows: [Shadow(blurRadius: 3)]),
            ),
          ),
        ),
      );
      addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
    });

    customGoldenTest('Shadow with Offset(0, 6)', (tester) async {
      tester.binding.window.physicalSizeTestValue = const Size.square(150);
      await tester.pumpWidget(
        generateBaseApp(
          child: const Center(
            child: DecoratedIcon(
              icon: Icon(Icons.home, color: Colors.red),
              decoration: IconDecoration(
                shadows: [Shadow(blurRadius: 3, offset: Offset(0, 6))],
              ),
            ),
          ),
        ),
      );
      addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
    });

    customGoldenTest('Shadow with Offset(3, 0)', (tester) async {
      tester.binding.window.physicalSizeTestValue = const Size.square(100);
      await tester.pumpWidget(
        generateBaseApp(
          child: const Center(
            child: DecoratedIcon(
              icon: Icon(Icons.home, color: Colors.red),
              decoration: IconDecoration(
                shadows: [Shadow(blurRadius: 3, offset: Offset(3, 0))],
              ),
            ),
          ),
        ),
      );
      addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
    });
  });
}
