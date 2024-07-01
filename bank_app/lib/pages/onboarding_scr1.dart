import 'package:bank_app/constants/colors.dart';
// import 'package:bank_app/pages/widgets/buttonWidget.dart';
import 'package:bank_app/pages/widgets/onboarding_widget.dart';
// import 'package:bank_app/pages/widgets/onboarding_widget.dart';
// import 'package:bank_app/pages/widgets/spacer.dart';
import 'package:flutter/material.dart';

class onBoardingScr1 extends StatefulWidget {
  const onBoardingScr1({super.key});

  @override
  State<onBoardingScr1> createState() => _onBoardingScr1State();
}

class _onBoardingScr1State extends State<onBoardingScr1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.bgColor,
        body: PageView.builder(
          itemCount: onBoardList.length,
          itemBuilder: (context, index) => onBordingWidget(
            img: onBoardList[index].img,
            textt: onBoardList[index].textt,
            textSize: 24,
            textColor: AppColors.textColor,
            fonttext: "assets/fonts/Poppins-SemiBold.ttf",
            sTextt: onBoardList[index].sTextt,
            sTextSize: 14,
            sFonttext: "assets/fonts/Poppins-Regular.ttf",
            sTextColor: AppColors.sTextColor,
          ),
        ));
  }
}

class onBoard {
  final String img, textt, sTextt;
  onBoard({required this.img, required this.textt, required this.sTextt});
}

final List onBoardList = [
  onBoard(
      img: "assets/images/onbaord1.png",
      textt: "Fastest Payment in the world",
      sTextt:
          "Integrate multiple payment methoods to help you up the process quickly"),
  onBoard(
      img: "assets/images/onboard2.png",
      textt: "The most Secoure Platfrom for Customer",
      sTextt:
          "Built-in Fingerprint, face recognition and more, keeping you completely safe"),
  onBoard(
      img: "assets/images/onbaord3.png",
      textt: "Paying for Everything is Easy and Convenient",
      sTextt:
          "Built-in Fingerprint, face recognition and more, keeping you completely safe")
];

// class OnBoardContent extends StatefulWidget {
//   const OnBoardContent({
//     super.key,
//     required this.img,
//     required this.textt,
//     required this.textSize,
//     required this.textColor,
//     required this.fonttext,
//     required this.sTextt,
//     required this.sTextSize,
//     required this.sTextColor,
//     required this.sFonttext,
//   });

//   final String img;
//   final String textt;
//   final double textSize;
//   final Color textColor;
//   final String fonttext;
//   final String sTextt;
//   final double sTextSize;
//   final Color sTextColor;
//   final String sFonttext;

//   @override
//   State<OnBoardContent> createState() => _OnBoardContentState();
// }

// class _OnBoardContentState extends State<OnBoardContent> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         const Spacerr(spHeight: 150, spWidth: 0),
//         Image(
//           image: AssetImage(widget.img),
//           height: 300,
//           width: 300,
//         ),
//         const Spacerr(spHeight: 30, spWidth: 0),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20),
//           child: Text(
//             textAlign: TextAlign.center,
//             widget.textt,
//             style: TextStyle(
//                 fontSize: widget.textSize,
//                 color: widget.textColor,
//                 fontFamily: widget.fonttext),
//           ),
//         ),
//         const Spacerr(spHeight: 10, spWidth: 0),
//         Text(
//           textAlign: TextAlign.center,
//           widget.sTextt,
//           style: TextStyle(
//               fontSize: widget.sTextSize,
//               color: widget.sTextColor,
//               fontFamily: widget.sFonttext),
//         ),
//         const Spacerr(spHeight: 40, spWidth: 0),
//         const ButtonWidget(
//             textt: "Next",
//             textSize: 16,
//             textColor: AppColors.textColor,
//             fonttext: "assets/fonts/Poppins-SemiBold.ttf")
//       ],
//     );
//   }
// }
