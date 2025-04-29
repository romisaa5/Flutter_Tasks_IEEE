import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.color,
      this.onTap,
      required this.width});
  final String text;
  final Color color;
  final double width;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          width: width,
          height: 48,
          decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xff8875FF),
              ),
              borderRadius: BorderRadius.circular(2),
              color: color),
          child: Center(
            child: Text(
              text,
              style:TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ));
  }
}
