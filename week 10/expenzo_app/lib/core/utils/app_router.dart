import 'package:expenzo_app/features/home/data/models/transaction.dart';
import 'package:expenzo_app/features/home/presentation/ui/views/edit_transaction_view.dart';
import 'package:expenzo_app/features/home/presentation/ui/views/home_view.dart';
import 'package:expenzo_app/features/onboarding/presentation/ui/views/first_onboard_view.dart';
import 'package:expenzo_app/features/onboarding/presentation/ui/views/second_onboard_view.dart';
import 'package:expenzo_app/features/onboarding/presentation/ui/views/third_onboard_view.dart';
import 'package:expenzo_app/features/splash/presentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final splashView = '/splashview';
  static final firstScreen = '/onboardingscreen1';
  static final secondScreen = '/onboardingscreen2';
  static final thirdScreen = '/onboardingscreen3';
  static final homeview = '/homeview';
  static final editview = '/editview';
  static final router = GoRouter(
    initialLocation: splashView,

    routes: [
      GoRoute(path: splashView, builder: (context, state) => SplashView()),
      GoRoute(
        path: firstScreen,
        builder: (context, state) => FirstOnboardView(),
      ),
      GoRoute(
        path: secondScreen,
        builder: (context, state) => SecondOnboardView(),
      ),
      GoRoute(
        path: thirdScreen,
        builder: (context, state) => ThirdOnboardView(),
      ),
      GoRoute(path: homeview, builder: (context, state) => HomeView()),
      GoRoute(
        path: editview,
        builder: (context, state) {
          final transaction = state.extra as TransactionExpense;
          return EditTransactionView(transaction: transaction);
        },
      ),
    ],
  );
}
