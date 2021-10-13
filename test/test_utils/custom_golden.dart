import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:meta/meta.dart';

typedef CustomGoldenTester = Future<void> Function(WidgetTester tester);

/// Golden test which preloads the application's fonts and then runs the
/// `screenMatchesGolden` with the description of the test.
@isTestGroup
void customGoldenTest(
  String description,
  CustomGoldenTester test,
) {
  testGoldens(description, (tester) async {
    await loadAppFonts();
    await test(tester);
    await screenMatchesGolden(
      tester,
      description
          .toLowerCase()
          .replaceAll(' ', '_')
          .replaceAll(RegExp(r'(?:|[^\w\s])+'), ''),
    );
  });
}
