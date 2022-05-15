import 'package:optional_nullable/optional_nullable.dart';
import 'package:test/test.dart';

void main() {
  group('Simple Value Tests', () {
    final optionalNonNull = OptionalNullable<int>(valueOrNull: 1);
    final optionalNull = OptionalNullable<int>(valueOrNull: null);

    test('Non-Null Test Value', () {
      expect(optionalNonNull.valueOrNull, equals(1));
    });

    test('Non-Null Test Getter isNull', () {
      expect(optionalNonNull.isNull, equals(false));
    });

    test('Non-Null Test Getter isNotNull', () {
      expect(optionalNonNull.isNotNull, equals(true));
    });

    test('Null Test Value', () {
      expect(optionalNull.valueOrNull, equals(null));
    });

    test('Null Test Getter isNull', () {
      expect(optionalNull.isNull, equals(true));
    });

    test('Null Test Getter isNotNull', () {
      expect(optionalNull.isNotNull, equals(false));
    });
  });
}
