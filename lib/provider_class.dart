import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  int _num = 0;
  int get num => _num;

  void increament() {
    _num++;
    notifyListeners();
  }
}
