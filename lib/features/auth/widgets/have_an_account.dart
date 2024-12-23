import 'package:flutter/material.dart';

class HaveAnAccount extends StatelessWidget {
  const HaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("تمتلك حساب بالفعل ؟"),
        const SizedBox(
          width: 4,
        ),
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Text(
            "تسجيل الدخول",
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
