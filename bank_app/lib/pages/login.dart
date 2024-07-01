import 'package:bank_app/constants/colors.dart';
import 'package:bank_app/pages/icon_widget.dart';
import 'package:bank_app/pages/text_form_field.dart';
import 'package:bank_app/pages/widgets/buttonWidget.dart';
import 'package:bank_app/pages/widgets/home_screen.dart';
import 'package:bank_app/pages/widgets/spacer.dart';
import 'package:bank_app/pages/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
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
                      textt: "Sign In",
                      textSize: 32,
                      textColor: AppColors.textColor,
                      fonttext: "assets/fonts/Poppins-Medium.ttf"),
                ],
              ),
            ),
            const Spacerr(spHeight: 40, spWidth: 0),
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
            const Spacerr(spHeight: 20, spWidth: 0),
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
            const Spacerr(spHeight: 35, spWidth: 0),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
              child: const ButtonWidget(
                  textt: "Sign In",
                  textSize: 16,
                  textColor: AppColors.textColor,
                  fonttext: "assets/fonts/SemiBold.ttf"),
            ),
            const Spacerr(spHeight: 30, spWidth: 0),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget(
                    textt: "I'm a new user",
                    textSize: 14,
                    textColor: AppColors.sstext,
                    fonttext: "assets/fonts/Poppins-Regular.ttf"),
                Spacerr(spHeight: 0, spWidth: 5),
                // Spacerr(spHeight: 0, spWidth: 7),
                TextWidget(
                    textt: "Sign Up",
                    textSize: 14,
                    textColor: AppColors.ssstext,
                    fonttext: "assets/fonts/Poppins-Regular.ttf"),
              ],
            )
          ],
        ));
  }
}
