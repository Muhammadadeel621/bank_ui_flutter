import 'package:bank_app/constants/colors.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String textt;
  final double textSize;
  final Color textColor;
  final String fonttext;
  const ButtonWidget(
      {super.key,
      required this.textt,
      required this.textSize,
      required this.textColor,
      required this.fonttext});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 335,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: AppColors.onboardingbtn,
      ),
      child: Center(
        child: Text(
          textt,
          style: TextStyle(
              fontSize: textSize, color: textColor, fontFamily: fonttext),
        ),
      ),
    );
  }
}
