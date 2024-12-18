import 'package:flutter/material.dart';
import 'package:mvvm1/view_models/counter_view_model.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<CounterViewModel>(context);

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          title: Text(
            "MVVM Counter",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Counter  :  ${viewModel.counter}',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        spacing: 10,
        children: [
          ElevatedButton(
            onPressed: () => viewModel.incrementCounter(),
            child: Icon(
              Icons.plus_one,
              size: 30,
              weight: 40,
            ),
          ),
          ElevatedButton(
            onPressed: () => viewModel.decrementCounter(),
            child: Icon(
              Icons.exposure_minus_1,
              size: 30,
              weight: 40,
            ),
          ),
        ],
      ),
    );
  }
}
