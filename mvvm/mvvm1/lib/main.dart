import 'package:flutter/material.dart';
import 'package:mvvm1/view/counter_screen.dart';
import 'package:mvvm1/view_models/counter_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(  MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => CounterViewModel()),
    ],
    child: const MyApp(),
  ),);
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => CounterScreen(),
      },
    );
  }
}
