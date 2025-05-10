import 'package:flutter/material.dart';

class FavouriteClass with ChangeNotifier {
  List<int> _data = [];
  List<int> get data => _data;

  void add(int value) {
    _data.add(value);
    notifyListeners();
  }


 void remove(int value) {
    _data.remove(value);
    notifyListeners();
  }

}
