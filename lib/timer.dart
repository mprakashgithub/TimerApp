import 'package:flutter/material.dart';

class Counter extends ChangeNotifier {
  var _count = 0;

  int get getTime {
    return _count;
  }
  void incrementTime() {
    if(_count<=59){
_count += 1;
    }
    // _count=0;
    notifyListeners();
  }
}