import 'package:flutter/material.dart';
import 'package:operating_sys/core/utlis/app_images.dart';
import 'package:operating_sys/core/widgets/custom_button.dart';
import 'package:operating_sys/features/auth/widgets/customtextfromauth.dart';
import 'package:operating_sys/features/splash/presentation/views/home_view.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.green.shade200,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff6a93e5),
              Colors.white,
              Colors.white,
              Color(0xff7b93e8),
            ],
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(
          children: [
            // Image.asset(Assets.imagesAuthback),
            Image.asset(Assets.imagesAuthbacktow),
            const SizedBox(
              height: 5,
            ),
            CustomTextFormAuth(
              hinttext: "اسم المستخدم",
              labeltext: "Uesr Name",
              iconData: Icons.person_rounded,
              valid: (val) {
                return null;
              },
              isNumber: false,
            ),
            CustomTextFormAuth(
              obscureText: true,
              hinttext: "كلمة المرور",
              labeltext: "Password",
              iconData: Icons.lock_outline,
              valid: (val) {
                return null;
              },
              isNumber: true,
            ),
            const SizedBox(
              height: 40,
            ),
            CustomButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, HomeView.routeName);
              },
              text: "تسجيل دخول",
              backgroundColor: Colors.blueAccent,
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:operating_sys/core/utlis/app_images.dart';
// import 'package:operating_sys/core/widgets/custom_button.dart';
// import 'package:operating_sys/core/widgets/custom_text_field.dart';
// import 'package:operating_sys/features/splash/presentation/views/home_view.dart';

// class LoginViewBody extends StatelessWidget {
//   const LoginViewBody({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16.0),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Image.asset(Assets.imagesVB),
//               const SizedBox(
//                 height: 10,
//               ),
//               const CustomTextFormField(
//                 suffixicon: Icon(
//                   Icons.email_outlined,
//                   color: Color(0xffC9CECf),
//                 ),
//                 hintText: 'اسم المستخدم',
//                 textInputType: TextInputType.name,
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               const CustomTextFormField(
//                 suffixicon: Icon(
//                   Icons.remove_red_eye,
//                   color: Color(0xffC9CECf),
//                 ),
//                 hintText: 'كلمة المرور',
//                 textInputType: TextInputType.visiblePassword,
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               // const Row(
//               //   mainAxisAlignment: MainAxisAlignment.end,
//               //   children: [
//               //     Text(
//               //       'نسيت كلمة المرور؟',
//               //       style: TextStyle(
//               //         color: Color(0xFF2D9F5D),
//               //         fontSize: 13,
//               //         fontFamily: 'Cairo',
//               //         fontWeight: FontWeight.w600,
//               //         height: 0.13,
//               //       ),
//               //     ),
//               //   ],
//               // ),
//               const SizedBox(
//                 height: 10,
//               ),
//               CustomButton(
//                 onPressed: () {
//                   Navigator.pushReplacementNamed(context, HomeView.routeName);
//                 },
//                 text: "تسجيل دخول",
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Image.asset(Assets.imagesAppicon),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }