import 'package:flutter_test/flutter_test.dart';
import 'package:icon_decoration/icon_decoration.dart';

void main() {
  group('IconBorder class', () {
    test('Width cannot be negative', () {
      expect(() => IconBorder(width: -1), throwsAssertionError);
    });
  });
}
