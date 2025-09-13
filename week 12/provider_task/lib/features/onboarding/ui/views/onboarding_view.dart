import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider_task/features/onboarding/ui/widgets/onboarding_body.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Center(
            child: PageView(
              controller: _controller,
              children: [
                OnboardingScreen(
                  controller: _controller,
                  isFirst: true,
                  title: "Welcome to Social Mate",
                  description: "Your new social world starts here.",
                  imagePath: "assets/images/onboard1.png",
                ),
                OnboardingScreen(
                  controller: _controller,
                  title: "Share Moments",
                  description: "Post photos, videos, and stories instantly.",
                  imagePath: "assets/images/onboard2.png",
                ),
                OnboardingScreen(
                  controller: _controller,
                  title: "Stay Connected",
                  description: "Chat and call friends anytime, anywhere.",
                  imagePath: "assets/images/onboard3.png",
                ),
                OnboardingScreen(
                  controller: _controller,
                  title: "Discover & Explore",
                  description:
                      "Follow people, join communities, and explore trends.",
                  imagePath: "assets/images/onboard4.png",
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 200.h,
            child: SmoothPageIndicator(
              controller: _controller,
              count: 4,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.blue,
                dotColor: Colors.grey.shade300,
                dotHeight: 10,
                dotWidth: 10,
                expansionFactor: 3,
                spacing: 8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
