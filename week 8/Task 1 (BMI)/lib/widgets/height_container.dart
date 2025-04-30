import 'package:bmi/theme/colors.dart';
import 'package:bmi/theme/text_style.dart';
import 'package:flutter/material.dart';

class HeightContainer extends StatelessWidget {
  const HeightContainer({
    super.key,
    required this.height,
    required this.onChanged,
  });
  final double height;
  final Function(double) onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.kPrimaryColor.withValues(alpha: .18),
        borderRadius: BorderRadius.circular(12),
      ),
      width: 342,
      height: 239,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 15,
          children: [
            Row(children: [Text('Height', style: TextStyles.textStyle20)]),
            Text(height.toInt().toString(), style: TextStyles.textStyle64),
            Slider(
              inactiveColor: AppColors.blackColor,
              activeColor: AppColors.kPrimaryColor,
              min: 50,
              max: 220,
              value: height,
              onChanged: onChanged,
            ),
          ],
        ),
      ),
    );
  }
}
