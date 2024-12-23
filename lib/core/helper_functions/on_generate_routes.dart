import 'package:flutter/material.dart';
import 'package:operating_sys/addition/employee_registration.dart';
import 'package:operating_sys/bottomnavigatscrren/favorite_screen.dart';
import 'package:operating_sys/features/auth/presentation/views/login_view.dart';
import 'package:operating_sys/features/auth/presentation/views/signup_view.dart';
import 'package:operating_sys/features/splash/presentation/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:operating_sys/features/splash/presentation/on_boarding/presentation/views/widgets/on_boarding_view_body.dart';
import 'package:operating_sys/features/splash/presentation/views/home_view.dart';
import 'package:operating_sys/features/splash/presentation/views/splash_view.dart';
import 'package:operating_sys/features/splash/presentation/widgets/home_body_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (contexxt) => const SplashView());

    case LoginView.routeName:
      return MaterialPageRoute(builder: (contexxt) => const LoginView());

    case SignupView.routeName:
      return MaterialPageRoute(builder: (contexxt) => const SignupView());

    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (contexxt) => const OnBoardingView());

    case HomeBodyView.routeName:
      return MaterialPageRoute(builder: (contexxt) => const HomeBodyView());

    case FavoriteScreen.routeName:
      return MaterialPageRoute(builder: (contexxt) => const FavoriteScreen());

    case EmployeeRegistration.routeName:
      return MaterialPageRoute(
          builder: (contexxt) => const EmployeeRegistration());

    case OnBoardingViewBody.routeName:
      return MaterialPageRoute(
          builder: (contexxt) => const OnBoardingViewBody());
    case HomeView.routeName:
      return MaterialPageRoute(builder: (contexxt) => const HomeView());

    default:
      return MaterialPageRoute(builder: (contexxt) => const Scaffold());
  }
}
