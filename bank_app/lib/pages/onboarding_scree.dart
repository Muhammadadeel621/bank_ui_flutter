import 'package:bank_app/constants/colors.dart';
import 'package:bank_app/pages/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class onBoardingScreen extends StatefulWidget {
  const onBoardingScreen({super.key});

  @override
  State<onBoardingScreen> createState() => _onBoardingScreenState();
}

class _onBoardingScreenState extends State<onBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextWidget(
            textt: "OnBoardingScreen",
            textSize: 30,
            textColor: AppColors.textColor,
            fonttext: "assets/fonts/Poppins-bold.ttf"),
      ),
    );
  }
}
