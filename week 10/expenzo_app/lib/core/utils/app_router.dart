import 'package:expenzo_app/features/onboarding/presentation/ui/views/first_onboard_view.dart';
import 'package:expenzo_app/features/splash/presentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final splashView = '/splashview';
  static final firstScreen = '/onboardingscreen1';
  static final secondScreen = '/onboardingscreen2';
  static final thirdScreen = '/onboardingscreen3';
  static final homeview = '/homeview';
  static final router = GoRouter(
    initialLocation: splashView,

    routes: [
      GoRoute(path: splashView, builder: (context, state) => SplashView()),
      GoRoute(
        path: firstScreen,
        builder: (context, state) => FirstOnboardView(),
      ),
    ],
  );
}
