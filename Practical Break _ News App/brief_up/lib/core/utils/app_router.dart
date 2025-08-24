import 'package:brief_up/features/splash/presentation/ui/views/splash_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final splash = '/splash';
  static final welcomeView = '/welcomeview';
  static final navBar = '/navBar';
  static final detailsview = '/detailsview';
  static final searchView = '/searchview';
  static GoRouter getRouter(bool isOnBoarded) {
    return GoRouter(
      initialLocation: splash,
      routes: [
        GoRoute(path: splash, builder: (context, state) => const SplashView()),      
      ],
    );
  }
}
