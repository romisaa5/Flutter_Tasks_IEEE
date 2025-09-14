import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:provider_task/features/auth/ui/views/login_view.dart';
import 'package:provider_task/features/auth/ui/views/register_view.dart';
import 'package:provider_task/features/navBar/presentation/manager/navbar_cubit/navbar_cubit.dart';
import 'package:provider_task/features/navBar/presentation/views/nav_bar.dart';
import 'package:provider_task/features/onboarding/ui/views/onboarding_view.dart';
import 'package:provider_task/features/profile/presentation/ui/views/edit_profile.dart';
import 'package:provider_task/features/store/presentation/ui/views/cart_view.dart';

class AppRouter {
  static final welcomeView = '/welcomeview';
  static final loginView = '/loginview';
  static final registerView = '/registerview';
  static final emailVerifiedView = '/emailverifiedview';
  static final forgetPassword = '/forgetpassword';
  static final navBar = '/navBar';
  static final detailsview = '/detailsview';
  static final searchView = '/searchview';
  static final editProfile = '/editProfie';
  static final cartview = '/cartview';
  static GoRouter getRouter() {
    return GoRouter(
      initialLocation: navBar,
      routes: [
        GoRoute(
          path: welcomeView,
          builder: (context, state) => const OnboardingView(),
        ),
        GoRoute(path: loginView, builder: (context, state) => LoginView()),
        GoRoute(
          path: registerView,
          builder: (context, state) => RegisterView(),
        ),
        GoRoute(path: editProfile, builder: (context, state) => EditProfile()),
        GoRoute(path: cartview, builder: (context, state) => CartView()),
        GoRoute(
          path: navBar,
          builder: (context, state) =>
              BlocProvider(create: (context) => NavbarCubit(), child: NavBar()),
        ),
      ],
    );
  }
}
