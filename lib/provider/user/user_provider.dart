import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:local_db/model/user_model.dart';
import 'package:test_fo/repostory/user_repostory.dart';

class MindsViewModel extends ChangeNotifier {
  MindRepository? mindRepository;
  MindsViewModel({required this.mindRepository});

  List<MindModel>? minds;
  bool isLoading = false;

  void addMind(MindModel mind) async {
    mindRepository!.addMind(mind);
  }

  void readMinds() async {
    loadingChanger();
    minds = await mindRepository!.readMind();
    loadingChanger();
  }

  void updateMind(MindModel mindModel, String mind) async {
    mindRepository!.updateMind(mindModel, mind);
    readMinds();
  }

  void deleteMind(String mind) async {
    mindRepository!.deleteMind(mind);
    readMinds();
  }

  void loadingChanger() {
    isLoading = !isLoading;
    notifyListeners();
  }
}
