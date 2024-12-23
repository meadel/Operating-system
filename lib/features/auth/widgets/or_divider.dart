import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Divider(
            color: Color(0xFFDCDEDE),
          ),
        ),
        SizedBox(
          width: 18,
        ),
        Text(
          "أو",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(
              0xFF0C0D0D,
            ),
            fontSize: 16,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.w600,
            height: 0.09,
          ),
        ),
        SizedBox(
          width: 18,
        ),
        Expanded(
          child: Divider(
            color: Color(0xFFDCDEDE),
          ),
        ),
      ],
    );
  }
}
