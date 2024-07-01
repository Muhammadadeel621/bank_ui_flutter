import 'package:bank_app/constants/colors.dart';
import 'package:bank_app/pages/sign_up.dart';
import 'package:bank_app/pages/widgets/buttonWidget.dart';
import 'package:bank_app/pages/widgets/spacer.dart';
import 'package:flutter/material.dart';

class onBordingWidget extends StatelessWidget {
  final String img;
  final String textt;
  final double textSize;
  final Color textColor;
  final String fonttext;
  final String sTextt;
  final double sTextSize;
  final Color sTextColor;
  final String sFonttext;

  const onBordingWidget({
    super.key,
    required this.img,
    required this.textt,
    required this.textSize,
    required this.textColor,
    required this.fonttext,
    required this.sTextt,
    required this.sTextSize,
    required this.sTextColor,
    required this.sFonttext,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacerr(spHeight: 120, spWidth: 0),
        Image.asset(
          img,
          height: 300,
          width: 300,
        ),
        const Spacerr(spHeight: 30, spWidth: 0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 27),
          child: Text(
            textAlign: TextAlign.center,
            textt,
            style: TextStyle(
                fontSize: textSize, color: textColor, fontFamily: fonttext),
          ),
        ),
        const Spacerr(spHeight: 10, spWidth: 0),
        Text(
          textAlign: TextAlign.center,
          sTextt,
          style: TextStyle(
              fontSize: sTextSize, color: sTextColor, fontFamily: sFonttext),
        ),
        const Spacerr(spHeight: 40, spWidth: 0),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
          child: const ButtonWidget(
              textt: "Next",
              textSize: 16,
              textColor: AppColors.textColor,
              fonttext: "assets/fonts/Poppins-SemiBold.ttf"),
        )
      ],
    );
  }
}
