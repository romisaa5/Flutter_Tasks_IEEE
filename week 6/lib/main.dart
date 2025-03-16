import 'package:flutter/material.dart';
import 'package:task6/home_page.dart';

void main() {
  runApp(const Task6());
}

class Task6 extends StatelessWidget {
  const Task6({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home: HomePage());
  }
}
