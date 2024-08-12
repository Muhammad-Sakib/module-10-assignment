import 'package:flutter/material.dart';
import 'package:module_10_assignment/view/greeting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Test Assignmentś',
      home: GreetingScreen(),
    );
  }
}
