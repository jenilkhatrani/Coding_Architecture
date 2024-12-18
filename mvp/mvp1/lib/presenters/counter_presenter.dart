import 'package:mvp1/models/counter_model.dart';
import 'package:mvp1/views/counter_screen.dart';

class CounterPresenter {
  final CounterView view;
  final CounterModel _model;

  CounterPresenter({required this.view}) : _model = CounterModel();

  void increment() {
    _model.increment();
    updateView();
  }

  void decrement() {
    _model.decrement();
    updateView();
  }

  void updateView() {
    view.updateView(_model.count);
  }
}
