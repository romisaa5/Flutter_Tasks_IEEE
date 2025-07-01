import 'package:auth_screens/theme/app_color.dart';
import 'package:auth_screens/theme/text_styles.dart';
import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 285,
      width: double.infinity,
      decoration: BoxDecoration(color: AppColor.kPrimaryColor),
      child: Stack(
        children: [
          Positioned(
            left: 184,
            top: -71,
            child: Image.asset(
              'assets/images/circle.png',
              height: 250,
              width: 250,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 112,
            left: 26,
            child: Text(title, style: Styles.textStyle48),
          ),
          Positioned(
            top: 225,
            left: 28,
            child: Image.asset(
              'assets/images/circle.png',
              height: 47,
              width: 47,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            left: -4,
            top: 208,
            child: Image.asset(
              'assets/images/circle.png',
              height: 17,
              width: 17,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
