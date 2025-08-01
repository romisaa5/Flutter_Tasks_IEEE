import 'package:expenzo_app/core/utils/app_router.dart';
import 'package:expenzo_app/features/onboarding/presentation/ui/widgets/onboard_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SecondOnboardView extends StatelessWidget {
  const SecondOnboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardBody(
        onTap: () {
          GoRouter.of(context).push(AppRouter.thirdScreen);
        },
        currentIndex: 1,
        title: 'Budgeting Made Simple',
        desc:
            'We help you categorize your spending, identify areas to save, and stay on top of your financial goals.',
        buttonText: 'Continue',
        image: 'assets/images/onboard2.png',
      ),
    );
  }
}
