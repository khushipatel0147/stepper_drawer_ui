import 'package:flutter/material.dart';

class StepperProvider extends ChangeNotifier {
  int i = 0;

  void Plus() {
    if (i < 3) {
      i++;
      notifyListeners();
    }
  }

  void Remove() {
    if (i > 0) {
      i--;
      notifyListeners();
    }
  }
}
