import 'package:flutter/material.dart';
import 'package:operating_sys/constants.dart';
import 'package:operating_sys/core/services/shared_preferences_singleton.dart';
import 'package:operating_sys/features/auth/presentation/views/login_view.dart';
import 'package:operating_sys/features/splash/presentation/on_boarding/presentation/views/on_boarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    excuteNaviagtion();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        "assets/images/appicon.png",
      ),
    );
  }

  void excuteNaviagtion() {
    bool isOnBoardingViewSeen = Prefs.getBool(kisOnBoardingViewSeen);
    Future.delayed(const Duration(seconds: 3), () {
      if (isOnBoardingViewSeen) {
        Navigator.pushReplacementNamed(context, LoginView.routeName);
      } else {
        Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
      }
    });
  }
}
