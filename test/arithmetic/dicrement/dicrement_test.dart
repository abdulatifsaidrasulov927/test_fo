import 'package:flutter_test/flutter_test.dart';
import 'package:test_fo/provider/arithmetic/dicrement/dicrement_provider.dart';

void main() {
  test('result musbat chiqdi', () {
    int dicrementCheckManfiy(int result) {
      if (result > 0) {
        return 0;
      }
      if (result < 0) {
        return result;
      }
      return 0;
    }

    final arithmetic = DicrementProvider();

    arithmetic.dicrement();

    expect(arithmetic.result, dicrementCheckManfiy(arithmetic.result));
  });
}
