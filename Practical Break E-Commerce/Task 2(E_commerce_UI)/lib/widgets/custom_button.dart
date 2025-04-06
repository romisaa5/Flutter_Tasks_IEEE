
import 'package:flutter/material.dart';
import 'package:task2/core/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.color,
      this.onTap,
      required this.width, required this.borderreduis});
  final String text;
  final Color color;
  final double width;
  final double borderreduis;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          width: width,
          height: 48,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderreduis), color: color),
          child: Center(
            child: Text(
              text,
              style: Styles.textStyle16.copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ));
  }
}
