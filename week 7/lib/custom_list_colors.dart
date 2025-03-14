import 'package:flutter/material.dart';

class CustomListColors extends StatelessWidget {
  const CustomListColors({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 3,
      children: [
       coloritem(Colors.orange),
       coloritem(Colors.green),
       coloritem(Colors.red),
       coloritem(Colors.blue),
      ],
    );
  }

  Widget coloritem(Color color) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(50)),
    );
  }
}
