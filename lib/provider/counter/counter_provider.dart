import 'package:flutter/widgets.dart';

class CounterProvider extends ChangeNotifier {
  int _value = 0;

  void increment() {
    _value++;
    notifyListeners();
  }

  void decrement() {
    _value--;
    notifyListeners();
  }

  int get value => _value;
}
