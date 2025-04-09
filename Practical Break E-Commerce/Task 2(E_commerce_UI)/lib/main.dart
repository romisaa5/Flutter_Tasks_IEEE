import 'package:flutter/material.dart';
import 'package:task2/widgets/Bottom_nav_bar.dart';

void main() {
  runApp(const ECommerceUi());
}

class ECommerceUi extends StatelessWidget {
  const ECommerceUi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CustomBottomNavBar(),
    );
  }
}
