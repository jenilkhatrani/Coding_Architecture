import 'package:flutter/material.dart';
import 'package:mvvm2/view_model/user_view_model.dart';
import 'package:mvvm2/views/user_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserViewModel()),
  ],
    child: const MyApp(),
  )
  );
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
         '/' : (context) => UserScreen(),
       },
     );
   }
 }
