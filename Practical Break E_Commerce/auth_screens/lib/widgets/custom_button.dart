import 'package:auth_screens/theme/app_color.dart';
import 'package:auth_screens/theme/text_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.color,
    this.onTap,
    required this.width,
    this.textcolor,
    this.image,
    this.isborder = true,
  });

  final String text;
  final Color? textcolor;
  final Color color;
  final double width;
  final void Function()? onTap;
  final String? image;
  final bool isborder;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: 50,
        decoration: BoxDecoration(
          border: isborder ? Border.all(color: AppColor.kPrimaryColor) : null,
          borderRadius: BorderRadius.circular(50),
          color: color,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (image != null) ...[
              Image.asset(image!, width: 24, height: 24),
              SizedBox(width: 8),
            ],
            Text(
              text,
              style: Styles.textStyle18.copyWith(
                color: textcolor ?? Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
