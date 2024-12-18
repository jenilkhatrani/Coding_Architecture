import 'package:flutter/material.dart';
import 'package:mvp1/presenters/counter_presenter.dart';

abstract class CounterView {
  void updateView(int count);
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> implements CounterView {
  int count = 0;
  late CounterPresenter _presenter;

  @override
  void initState() {
    super.initState();
    _presenter = CounterPresenter(view: this);
    _presenter.updateView();
  }


  @override
  void updateView(int newCount) {
    setState(() {
      count = newCount;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text('MVP Counter',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Conter  :  $count',
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        spacing: 10,
        children: [
          ElevatedButton(onPressed: (){
            _presenter.increment();
          }, child: Icon(Icons.plus_one,size: 30,)),

          ElevatedButton(onPressed: (){
            _presenter.decrement();
          }, child: Icon(Icons.exposure_minus_1,size: 30,)),
        ],
      ),
    );
  }
}
