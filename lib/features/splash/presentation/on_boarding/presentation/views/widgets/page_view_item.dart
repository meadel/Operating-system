import 'package:flutter/material.dart';
import 'package:operating_sys/constants.dart';
import 'package:operating_sys/core/services/shared_preferences_singleton.dart';
import 'package:operating_sys/features/auth/presentation/views/login_view.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      required this.image,
      required this.subtitle,
      required this.title,
      required this.isVisible});

  final String image;
  final String subtitle;
  final Widget title;

  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
          visible: isVisible,
          child: GestureDetector(
            onTap: () {
              Prefs.setBool(kisOnBoardingViewSeen, true);

              Navigator.of(context).pushReplacementNamed(LoginView.routeName);
            },
            child: Container(
              padding: const EdgeInsets.only(left: 290, top: 20),
              child: const Text(
                "تخط",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 151, 149, 149)),
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(
            top: 150,
          ),
          child: Image.asset(image),
        ),
        const SizedBox(
          height: 20,
        ),
        title,
        const SizedBox(
          height: 30,
        ),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color.fromARGB(255, 146, 131, 131),
            fontWeight: FontWeight.bold,
            fontSize: 10.0,
          ),
        ),
      ],
    );
  }
}
