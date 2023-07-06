
import 'package:go_router/go_router.dart';
import 'package:vel_app/presentation/auth/screens/login_screen.dart';
import 'package:vel_app/presentation/auth/screens/signin_screen.dart';
import 'package:vel_app/presentation/main/screens/home_page.dart/home_page.dart';

final GoRouter router = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      name: LoginScreen.name,
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      name: HomePage.name,
      path: '/home-page',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      name: SignInScreen.name,
      path: '/sign-in',
      builder: (context, state) => const SignInScreen(),
    ),
  ]
);

