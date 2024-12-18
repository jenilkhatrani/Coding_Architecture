import 'package:flutter/material.dart';
import 'package:mvc2/views/user_screen.dart';

void main(){
  runApp(const MyApp(),);
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
        '/':(context) => UserScreen(),
      },
    );
  }
}
