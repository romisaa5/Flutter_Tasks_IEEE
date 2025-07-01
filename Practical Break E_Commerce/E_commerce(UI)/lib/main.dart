import 'package:e_commerce/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';


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
