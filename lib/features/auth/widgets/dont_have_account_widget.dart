import 'package:flutter/material.dart';
import 'package:operating_sys/features/auth/presentation/views/signup_view.dart';

class DontHaveAnAccountWidget extends StatelessWidget {
  const DontHaveAnAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("ليس لديك حساب ؟"),
        const SizedBox(
          width: 4,
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, SignupView.routeName);
          },
          child: const Text(
            "قم بانشاء حساب",
            style: TextStyle(
              color: Color(0xFF1B5E37),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
