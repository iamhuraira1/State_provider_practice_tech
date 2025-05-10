import 'package:flutter/material.dart';

class SliderClass with ChangeNotifier {
  double _range = 1;
  double get range => _range;

  void opacity( double input) {
    _range = input;
    notifyListeners();
  }
}
