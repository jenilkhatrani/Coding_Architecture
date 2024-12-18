
import 'package:mvc1/models/counter_model.dart';

class CounterController {
  final CounterModel _model = CounterModel();

  int get counter => _model.counter;

  void incrementCounter() {
    _model.increment();
  }

  void decrementCounter() {
    _model.decrement();
  }
}
