import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier{
  //state
  //int _counter = 0;
  List<Map<String, dynamic>> _arrData = [];

  void addTodo(Map<String, dynamic> newTask){
    _arrData.add(newTask);
    notifyListeners();
  }

  List<Map<String, dynamic>> get mData => _arrData;




  /*set countValue(int value){
    _counter = value;
    notifyListeners();
  }

  int get countValue{
    return _counter;
  }*/



  /*//events
  void incrementCounter() {
    _counter++;
    notifyListeners();
  }

  void decrementCounter(){
    if(_counter>0) {
      _counter--;
      notifyListeners();
    }

  }*/

}