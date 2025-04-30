import 'package:bmi/theme/colors.dart';
import 'package:bmi/theme/text_style.dart';
import 'package:flutter/material.dart';

class AgeAndWeightContainer extends StatelessWidget {
  final String title;
  final String unit;
  final int value;
  final Function(int) onChanged;

  const AgeAndWeightContainer({
    super.key,
    required this.title,
    required this.unit,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165,
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.kPrimaryColor.withValues(alpha: .18),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 10,
        children: [
          Text(title, style: TextStyles.textStyle20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              iconContainer(Icons.add, () => onChanged(value + 1)),
              Text(value.toString(), style: TextStyles.textStyle40),
              iconContainer(Icons.remove, () {
                if (value > 0) onChanged(value - 1);
              }),
            ],
          ),
          Text(
            unit,
            style: TextStyles.textStyle16.copyWith(
              fontWeight: FontWeight.w500,
              color: AppColors.greyColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget iconContainer(IconData icon, void Function() onPressed) {
    return Container(
      height: 34,
      width: 34,
      decoration: BoxDecoration(
        color: AppColors.kPrimaryColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Align(
        alignment: Alignment.center,
        child: IconButton(
          padding: EdgeInsets.zero,
          onPressed: onPressed,
          icon: Icon(icon, color: AppColors.blackColor),
        ),
      ),
    );
  }
}
