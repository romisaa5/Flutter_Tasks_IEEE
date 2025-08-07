import 'package:expenzo_app/core/theme/app_colors.dart';
import 'package:expenzo_app/core/theme/text_app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.color,
    this.onTap,
    required this.width,
    this.textcolor,
    this.isborder = true,
    this.hight,
  });

  final String text;
  final Color? textcolor;
  final Color color;
  final double width;
  final void Function()? onTap;
  final bool isborder;
  final double? hight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        width: width,
        height: hight ?? 55.h,
        decoration: BoxDecoration(
          border: isborder ? Border.all(color: AppColors.primaryColor) : null,
          borderRadius: BorderRadius.circular(8.r),
          color: color,
        ),
        child: Text(
          text,
          style: TextAppTheme.textStyle18.copyWith(
            color: textcolor ?? Colors.white,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
