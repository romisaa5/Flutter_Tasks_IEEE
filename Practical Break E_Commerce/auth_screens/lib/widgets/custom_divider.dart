import 'package:auth_screens/theme/app_color.dart';
import 'package:auth_screens/theme/text_styles.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            endIndent: 10,
            color: AppColor.greydark,
            thickness: .5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(text, style: Styles.textStyle14),
        ),
        Expanded(
          child: Divider(
            endIndent: 10,
            color: AppColor.greydark,
            thickness: .5,
          ),
        ),
      ],
    );
  }
}
