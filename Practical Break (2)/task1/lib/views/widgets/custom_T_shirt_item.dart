import 'package:flutter/material.dart';

class CustomTShirtItem extends StatelessWidget {
  const CustomTShirtItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      height: 350,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: Colors.black
    ),
    child: Column(
      spacing: 15,
      children: [
        Image.asset('assets/images/t_shirt1.png'),
        Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: List.generate(3, (index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      width: index == 1 ? 12 : 8,
      height: 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: index == 1 ? Colors.red : Colors.grey,
      ),
    );
  }),
)
      ],
    ),
    )
;
  }
}