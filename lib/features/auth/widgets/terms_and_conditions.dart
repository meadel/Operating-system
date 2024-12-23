import 'package:flutter/material.dart';
import 'package:operating_sys/features/auth/widgets/custom_check_box.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key});

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          onChecked: (value) {
            isTermsAccepted = value;
            setState(() {});
          },
          isChecked: isTermsAccepted,
        ),
        const SizedBox(
          width: 16,
        ),
        const Column(
          children: [
            Text(
              "من خلال انشاء حساب فانك توافق على ",
              style: TextStyle(
                color: Color(0xFF949D9E),
              ),
            ),
            Text(
              "الشروط و الاحكام الخاصة بنا",
              style: TextStyle(
                color: Color(0xFF2D9F5D),
              ),
            )
          ],
        ),
      ],
    );
  }
}
