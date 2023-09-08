import 'package:flutter_test/flutter_test.dart';
import 'package:test_fo/provider/counter/counter_provider.dart';

void main() {
  test('Counter 1 ga oshdi', () {
    final counter = CounterProvider();

    counter.increment();

    expect(counter.value, 1);
  });
  test('Counter 1 ga kamaydi ', () {
    final counter = CounterProvider();

    counter.decrement();

    expect(counter.value, -1);
  });
}
