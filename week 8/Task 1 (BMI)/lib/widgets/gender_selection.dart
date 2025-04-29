import 'package:bmi/theme/colors.dart';
import 'package:bmi/theme/text_style.dart';
import 'package:flutter/material.dart';

class GenderSelection extends StatelessWidget {
  const GenderSelection({
    super.key,
    required this.icon,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });
  final IconData icon;
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 165,
        height: 186,
        decoration: BoxDecoration(
          color:
              isSelected
                  ? AppColors.kPrimaryColor.withValues(alpha: .38)
                  : AppColors.kPrimaryColor.withValues(alpha: .18),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 15,
          children: [
            Icon(icon, size: 62, color: AppColors.kPrimaryColor),
            Text(
              text,
              style: TextStyles.textStyle20.copyWith(
                color: AppColors.kPrimaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
