import 'package:flutter/material.dart';

class Counter extends ChangeNotifier {
  int counter = 0;

  void increase() {
    counter++;
    notifyListeners();
  }

  void decrement() {
    counter--;
    notifyListeners();
  }

  void resetCounter() {
    counter = 0;
    notifyListeners();
  }
}
