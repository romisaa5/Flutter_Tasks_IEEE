import 'package:flutter/material.dart';
import 'package:task1/constants.dart';

class CustomRowDetails extends StatelessWidget {
  const CustomRowDetails({super.key, required this.text1, required this.text2});
  final String text1, text2;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text1,
          style: TextStyle(
              fontSize: 18,
              fontFamily: 'font1',
              fontWeight: FontWeight.w600,
              color: Kprimarycolor),
        ),
        Text(
          text2,
          style: TextStyle(
              fontSize: 16, fontFamily: 'font1', color: Ksecondrycolor),
        ),
      ],
    );
  }
}
