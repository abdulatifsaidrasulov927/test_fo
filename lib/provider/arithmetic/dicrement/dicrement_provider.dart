import 'package:flutter/widgets.dart';

class DicrementProvider extends ChangeNotifier {
  TextEditingController _inputOne = TextEditingController();
  TextEditingController _inputTwo = TextEditingController();

  int _result = 0;

  void dicrement() {
    if (intputOne.text != '' && intputTwo.text != '') {
      _result = int.parse(intputOne.text) - int.parse(intputTwo.text);
    }
    notifyListeners();
  }

  TextEditingController get intputOne => _inputOne;
  TextEditingController get intputTwo => _inputTwo;

  int get result => _result;
}
