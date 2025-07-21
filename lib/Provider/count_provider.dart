import 'package:flutter/material.dart';

class CountProvider extends ChangeNotifier {
  int count;
  CountProvider({
    this.count = 0,
  });

  void addcount() {
    count++;
    notifyListeners();
  }

  void subcount() {
    count--;
    notifyListeners();
  }
}
