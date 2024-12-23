import 'package:flutter/material.dart';
import 'package:operating_sys/core/widgets/custom_appbar.dart';
import 'package:operating_sys/features/auth/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const routeName = 'login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: "تسجيل دخول",
        backgroundColor: const Color(0xff6a93e5),
      ),
      body: const LoginViewBody(),
    );
  }
}
