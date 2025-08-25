class OnboardingItem {
  final String title;
  final String subtitle;
  final String image;

  OnboardingItem({
    required this.title,
    required this.subtitle,
    required this.image,
  });
}

final List<OnboardingItem> onboardingData = [
  OnboardingItem(
    title: "Stay Updated",
    subtitle: "Get the latest news from around the world instantly.",
    image: "assets/images/news.png",
  ),
  OnboardingItem(
    title: "Personalized Feed",
    subtitle: "Choose your favorite topics and never miss a story.",
    image: "assets/images/onboard2.jpg",
  ),
  OnboardingItem(
    title: "Read Anytime",
    subtitle: "Save articles and read them offline whenever you want.",
    image: "assets/images/onboard3.jpg",
  ),
];
