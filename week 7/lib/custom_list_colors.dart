import 'package:flutter/material.dart';

class CustomListColors extends StatelessWidget {
  const CustomListColors({super.key});
 static List<Color> colors = [Colors.orange, Colors.green, Colors.red, Colors.blue];
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 3,
      children: colors.map((color) => colorItem(color)).toList(),
      
    );
  }

  Widget colorItem(Color color) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(50)),
    );
  }
}
