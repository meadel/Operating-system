import 'package:flutter/material.dart';
import 'package:operating_sys/features/splash/presentation/on_boarding/presentation/views/widgets/on_boarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
  static const routeName = 'onBoardingView';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: OnBoardingViewBody()),
    );
  }
}
