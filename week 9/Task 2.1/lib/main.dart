import 'package:flutter/material.dart';
import 'package:task2/home_screen.dart';

void main() {
  runApp(const Task21());
}

class Task21 extends StatelessWidget {
  const Task21({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomeScreen() ,
    );
  }
}
