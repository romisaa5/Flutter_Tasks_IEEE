import 'package:expenzo_app/core/helper/extentions.dart';
import 'package:expenzo_app/core/theme/app_colors.dart';
import 'package:expenzo_app/core/theme/text_app_theme.dart';
import 'package:expenzo_app/core/utils/app_router.dart';
import 'package:expenzo_app/core/widgets/custom_button.dart';
import 'package:expenzo_app/features/onboarding/presentation/ui/widgets/custom_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OnboardBody extends StatelessWidget {
  const OnboardBody({
    super.key,
    required this.image,
    required this.title,
    required this.desc,
    required this.buttonText,
    required this.currentIndex,
    this.onTap,
  });
  final void Function()? onTap;
  final String image;
  final String title;
  final String desc;
  final String buttonText;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            10.ph,
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: () {
                  GoRouter.of(context).go(AppRouter.homeview);
                },
                child: Text(
                  currentIndex == 2 ? 'Done' : 'Skip',
                  style: TextAppTheme.textStyle16.copyWith(
                    color: Color(0xff666666),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Image.asset(image, width: double.infinity, fit: BoxFit.cover),
            Text(
              title,
              style: TextAppTheme.textStyle24,
              textAlign: TextAlign.center,
            ),
            15.ph,
            Text(
              desc,
              style: TextAppTheme.textStyle14.copyWith(
                color: AppColors.blackColor,
              ),
              textAlign: TextAlign.center,
            ),
            40.ph,
            CustomPageIndicator(currentIndex: currentIndex),
            40.ph,
            CustomButton(
              onTap: onTap,
              text: buttonText,
              color: AppColors.primaryColor,
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
