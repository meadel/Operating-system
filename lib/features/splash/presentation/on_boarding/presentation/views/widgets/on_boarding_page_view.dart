import 'package:flutter/material.dart';
import 'package:operating_sys/features/splash/presentation/on_boarding/presentation/views/widgets/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [
        PageViewItem(
          isVisible: true,
          image: "assets/images/onboardingone.png",
          subtitle: "",
          title: Text(
            "",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
            ),
          ),
        ),
        PageViewItem(
          isVisible: true,
          image: "assets/images/onboardingtow.png",
          subtitle: "",
          title: Text(
            "",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
            ),
          ),
        ),
      ],
    );
  }
}
