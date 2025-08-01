import 'package:expenzo_app/core/helper/complete_onboarding.dart';
import 'package:expenzo_app/features/onboarding/presentation/ui/widgets/onboard_body.dart';
import 'package:flutter/material.dart';


class ThirdOnboardView extends StatelessWidget {
  const ThirdOnboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardBody(
        onTap: () => completeOnboarding(context),
        currentIndex: 2,
        title: 'Categorize, Save, Succeed',
        desc:
            'Expenzo helps you organize your expenses, find saving opportunities, and reach your goals faster.',
        buttonText: 'Continue',
        image: 'assets/images/onboard3.png',
      ),
    );
  }
}
