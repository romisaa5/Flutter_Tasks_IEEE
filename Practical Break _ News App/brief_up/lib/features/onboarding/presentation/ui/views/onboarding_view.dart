import 'package:brief_up/core/theme/app_colors.dart';
import 'package:brief_up/core/theme/text_theme.dart';
import 'package:brief_up/features/onboarding/presentation/models/onboarding_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _controller = PageController();
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        child: PageView.builder(
          controller: _controller,
          itemCount: onboardingData.length,
          onPageChanged: (index) {
            setState(() => isLastPage = index == onboardingData.length - 1);
          },
          itemBuilder: (context, index) {
            final item = onboardingData[index];
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(item.image, height: 250),
                const SizedBox(height: 30),
                Text(
                  item.title,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 15),
                Text(
                  item.subtitle,
                  style: const TextStyle(fontSize: 16, color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
              ],
            );
          },
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(12.r),
          ),

          height: 80,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                child: Text(
                  "Skip",
                  style: TextAppTheme.textStyle14.copyWith(color: Colors.white),
                ),
                onPressed:
                    () => _controller.jumpToPage(onboardingData.length - 1),
              ),
              Row(
                children: List.generate(
                  onboardingData.length,
                  (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    width:
                        _controller.hasClients &&
                                _controller.page?.round() == index
                            ? 16
                            : 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color:
                          _controller.hasClients &&
                                  _controller.page?.round() == index
                              ? Colors.grey
                              : Colors.white,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ),
              TextButton(
                child: Text(
                  isLastPage ? "Get Started" : "Next",
                  style: TextAppTheme.textStyle14.copyWith(color: Colors.white),
                ),
                onPressed: () {
                  if (isLastPage) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Welcome to News App!")),
                    );
                  } else {
                    _controller.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
