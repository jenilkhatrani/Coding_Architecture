
import 'package:flutter/material.dart';
import 'package:mvvm1/models/counter_model.dart';

class CounterViewModel extends ChangeNotifier {
  final CounterModel _model = CounterModel();


  int get counter => _model.getCounter();

  void incrementCounter() {
    _model.increment();
    notifyListeners();
  }
  void decrementCounter() {
    _model.decrement();
    notifyListeners();
  }
}
