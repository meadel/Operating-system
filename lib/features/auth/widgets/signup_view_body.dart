import 'package:flutter/material.dart';
import 'package:operating_sys/core/widgets/custom_button.dart';
import 'package:operating_sys/core/widgets/custom_text_field.dart';
import 'package:operating_sys/features/auth/widgets/have_an_account.dart';
import 'package:operating_sys/features/auth/widgets/terms_and_conditions.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            const CustomTextFormField(
              suffixicon: Icon(
                Icons.person,
                color: Color(0xffC9CECf),
              ),
              hintText: 'الاسم كامل',
              textInputType: TextInputType.name,
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomTextFormField(
              suffixicon: Icon(
                Icons.email_outlined,
                color: Color(0xffC9CECf),
              ),
              hintText: 'البريد الالكترونى',
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomTextFormField(
              suffixicon: Icon(
                Icons.phone_android_outlined,
                color: Color(0xffC9CECf),
              ),
              hintText: 'رقم الهاتف',
              textInputType: TextInputType.phone,
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomTextFormField(
              suffixicon: Icon(
                Icons.remove_red_eye,
                color: Color(0xffC9CECf),
              ),
              hintText: 'كلمة المرور',
              textInputType: TextInputType.visiblePassword,
            ),
            const SizedBox(
              height: 16,
            ),
            const TermsAndConditions(),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
              onPressed: () {},
              text: 'انشاء حساب جديد',
              backgroundColor: Colors.blueAccent,
            ),
            const SizedBox(
              height: 20,
            ),
            const HaveAnAccount(),
          ],
        ),
      ),
    );
  }
}
