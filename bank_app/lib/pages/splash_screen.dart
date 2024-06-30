import 'dart:async';

import 'package:bank_app/constants/colors.dart';
import 'package:bank_app/pages/onboarding_scree.dart';
import 'package:bank_app/pages/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const onBoardingScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Image(image: AssetImage("assets/images/splash_bg.png"))),
          TextWidget(
            textt: "BANKPICK",
            textColor: AppColors.textColor,
            textSize: 35,
            fonttext: "assets/fonts/Poppins-SemiBold.ttf",
          )
        ],
      ),
    );
  }
}
