import 'package:flutter/material.dart';
import '../controllers/counter_controller.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  final CounterController _controller = CounterController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text('MVC Counter',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Counter  :  ${_controller.counter}',
              style: TextStyle(fontSize: 32),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ElevatedButton(onPressed: (){
          setState(() {
            _controller.incrementCounter();
          });
        }, child: Icon(Icons.plus_one)),

          ElevatedButton(onPressed: (){
            setState(() {
              _controller.decrementCounter();
            });
        }, child: Icon(Icons.exposure_minus_1)),

        ],
      ),
    );
  }
}
