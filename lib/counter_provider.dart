import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier{
  //state
  int _counter = 0;

  int getCountValue(){
    return _counter;
  }

  //events
  void incrementCounter() {
    _counter++;
    notifyListeners();
  }

  void decrementCounter(){
    if(_counter>0) {
      _counter--;
      notifyListeners();
    }
  }

}