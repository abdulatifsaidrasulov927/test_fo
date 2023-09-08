import 'package:flutter_test/flutter_test.dart';
import 'package:test_fo/provider/arithmetic/increment/increment_providrer.dart';

void main() {
  test('result musbat chiqdi', () {
    int incrementCheckMusbat(int result) {
      if (result < 0) {
        return 0;
      }
      if (result > 0) {
        return result;
      }
      return 0;
    }

    final arithmetic = IncrementProvider();

    arithmetic.increment();

    expect(arithmetic.result, incrementCheckMusbat(arithmetic.result));
  });
}
