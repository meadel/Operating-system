import 'package:flutter/material.dart';
import 'package:operating_sys/core/widgets/custom_appbar.dart';
import 'package:operating_sys/features/auth/widgets/signup_view_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  static const routeName = 'signup';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: 'حساب جديد',
        backgroundColor: Colors.white,
      ),
      body: const SignupViewBody(),
    );
  }
}
