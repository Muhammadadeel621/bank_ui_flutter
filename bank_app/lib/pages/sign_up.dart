import 'package:bank_app/constants/colors.dart';
import 'package:bank_app/pages/icon_widget.dart';
import 'package:bank_app/pages/login.dart';
import 'package:bank_app/pages/text_form_field.dart';
import 'package:bank_app/pages/widgets/buttonWidget.dart';
import 'package:bank_app/pages/widgets/spacer.dart';
import 'package:bank_app/pages/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.bgColor,
        body: Column(
          children: [
            const Spacerr(spHeight: 30, spWidth: 0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  iconScreen(),
                ],
              ),
            ),
            const Spacerr(spHeight: 30, spWidth: 0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextWidget(
                      textt: "Sign Up",
                      textSize: 32,
                      textColor: AppColors.textColor,
                      fonttext: "assets/fonts/Poppins-Medium.ttf"),
                ],
              ),
            ),
            const Spacerr(spHeight: 10, spWidth: 0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextWidgett(labelTitle: "Full Name"),
                ],
              ),
            ),
            const CustomtextFormField(
              hinttextt: "Dennis Nzioki",
              textFieldIcon: Icon(
                Icons.mail_outline,
                color: AppColors.textColor,
              ),
            ),
            const Spacerr(spHeight: 10, spWidth: 0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextWidgett(labelTitle: "Phone Number"),
                ],
              ),
            ),
            const CustomtextFormField(
              hinttextt: "+923331234567",
              textFieldIcon: Icon(
                Icons.call,
                color: AppColors.textColor,
              ),
            ),
            const Spacerr(spHeight: 10, spWidth: 0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextWidgett(labelTitle: "Email Addresses"),
                ],
              ),
            ),
            const CustomtextFormField(
              hinttextt: "denisnzioki@gmail.com",
              textFieldIcon: Icon(
                Icons.mail_outline,
                color: AppColors.textColor,
              ),
            ),
            const Spacerr(spHeight: 10, spWidth: 0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextWidgett(labelTitle: "Password"),
                ],
              ),
            ),
            const CustomtextFormField(
              hinttextt: "........",
              textFieldIcon: Icon(
                Icons.lock_open_sharp,
                color: AppColors.textColor,
              ),
              textFieldIConn: Icon(
                Icons.remove_red_eye_outlined,
                color: AppColors.textColor,
              ),
            ),
            const Spacerr(spHeight: 25, spWidth: 0),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const loginScreen()));
              },
              child: const ButtonWidget(
                  textt: "Sign Up",
                  textSize: 16,
                  textColor: AppColors.textColor,
                  fonttext: "assets/fonts/SemiBold.ttf"),
            ),
            const Spacerr(spHeight: 25, spWidth: 0),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget(
                    textt: "Already have an account.",
                    textSize: 14,
                    textColor: AppColors.sstext,
                    fonttext: "assets/fonts/Poppins-Regular.ttf"),
                // Spacerr(spHeight: 0, spWidth: 7),
                TextWidget(
                    textt: "Sign In",
                    textSize: 14,
                    textColor: AppColors.ssstext,
                    fonttext: "assets/fonts/Poppins-Regular.ttf"),
              ],
            )
          ],
        ));
  }
}
