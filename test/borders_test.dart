import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:icon_decoration/icon_decoration.dart';

import 'test_utils/base_widget.dart';
import 'test_utils/custom_golden.dart';

void main() {
  group('Goldens Borders', () {
    customGoldenTest('Default border', (tester) async {
      tester.binding.window.physicalSizeTestValue = const Size.square(100);
      await tester.pumpWidget(
        generateBaseApp(
          child: const Center(
            child: DecoratedIcon(
              icon: Icon(Icons.favorite, color: Colors.transparent),
              decoration: IconDecoration(border: IconBorder()),
            ),
          ),
        ),
      );
      addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
    });
  });
}
