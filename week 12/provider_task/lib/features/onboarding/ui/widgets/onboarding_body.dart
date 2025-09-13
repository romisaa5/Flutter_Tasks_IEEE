import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider_task/core/theme/text_theme.dart';
import 'package:provider_task/core/utils/app_router.dart';
import 'package:provider_task/core/widgets/background_widget.dart';
import 'package:provider_task/core/widgets/custom_button.dart';

class OnboardingScreen extends StatefulWidget {
  final String title;
  final String description;
  final String imagePath;
  final bool isFirst;
  final PageController controller;

  const OnboardingScreen({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
    required this.controller,
    this.isFirst = false,
  });

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: widget.isFirst ? _buildFirstLayout() : _buildNormalLayout(),
      ),
    );
  }

  Widget _buildFirstLayout() {
    return Center(
      child: Column(
        spacing: 25.h,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(widget.imagePath, height: 250),
          SizedBox(height: 20.h),
          Image.asset('assets/images/logo.png'),

          Text(
            widget.description,
            style: const TextStyle(fontSize: 16, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 60.h),
          CustomButton(
            onTap: () {
              widget.controller.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            },
            text: 'Get Started',
            color: Colors.blue,
            width: double.infinity,
          ),
        ],
      ),
    );
  }

  Widget _buildNormalLayout() {
    return Column(
      spacing: 25.h,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(widget.imagePath, height: 250),
        const SizedBox(height: 10),
        Text(
          widget.title,
          style: TextAppTheme.textStyle24,
          textAlign: TextAlign.center,
        ),
        Text(
          widget.description,
          style: TextAppTheme.textStyle16,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 60.h),
        CustomButton(
          onTap: () {
            if (widget.controller.page == 3) {
              GoRouter.of(context).go(AppRouter.loginView);
            } else {
              widget.controller.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            }
          },
          text: 'Join Now',
          color: Colors.blue,
          width: double.infinity,
        ),
        TextButton(
          onPressed: () {
            GoRouter.of(context).go(AppRouter.loginView);
          },
          child: Text(
            'Sign In',
            style: TextAppTheme.textStyle16.copyWith(color: Colors.blue),
          ),
        ),
      ],
    );
  }
}
