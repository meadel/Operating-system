import 'package:flutter/material.dart';
import 'package:operating_sys/features/splash/presentation/widgets/home_body_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const routeName = "home";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: HomeBodyView());
  }
}
