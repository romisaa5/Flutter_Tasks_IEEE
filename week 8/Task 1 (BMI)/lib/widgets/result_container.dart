import 'package:bmi/theme/colors.dart';
import 'package:bmi/theme/text_style.dart';
import 'package:flutter/material.dart';

class ResultContainer extends StatelessWidget {
  const ResultContainer({
    super.key,
    required this.bmi,
    required this.bmiCategory,
    required this.massege, required this.color,
  });
  final double bmi;
  final String bmiCategory;
  final String massege;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 342,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.kPrimaryColor.withValues(alpha: .18),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        spacing: 15,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Your BMI is",
                style: TextStyles.textStyle18
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                    color: color.withValues(alpha: .20) ,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    bmiCategory,
                    style: TextStyles.textStyle16.copyWith(color: color),
                  ),
                ),
              ),
            ],
          ),

          Center(
            child: Text(bmi.toStringAsFixed(1), style: TextStyles.textStyle64),
          ),

          Text(
            'Your BMI result indicates that you\'re $bmiCategory .',
          ),
          Text(
            massege,
            style: TextStyle(color: Colors.white70, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
