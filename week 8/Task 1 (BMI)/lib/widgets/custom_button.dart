import 'package:bmi/theme/colors.dart';
import 'package:bmi/theme/text_style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.icon,
  });
  final void Function() onPressed;
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 342,
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 5,
          children: [
            Text(
              text,
              style: TextStyles.textStyle20.copyWith(
                color: AppColors.blackColor,
              ),
            ),
            Icon(icon, size: 24, color: AppColors.blackColor),
          ],
        ),
      ),
    );
  }
}
