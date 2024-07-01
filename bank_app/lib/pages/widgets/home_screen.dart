import 'package:bank_app/constants/colors.dart';
import 'package:bank_app/pages/widgets/home_circle.dart';
import 'package:bank_app/pages/widgets/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Padding(
        padding: EdgeInsets.only(left: 0, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListTile(
                leading: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/images/profile.webp"),
                ),
                title: TextWidget(
                    textt: "Welcome Back,",
                    textSize: 12,
                    textColor: AppColors.homeTitle,
                    fonttext: "assets/fonts/Poppins-Regular.ttf"),
                subtitle: TextWidget(
                    textt: "Dennis Nzioki",
                    textSize: 18,
                    textColor: AppColors.textColor,
                    fonttext: "assets/fonts/Poppins-Medium.ttf"),
                trailing: CircleHome(homeIcon: Icons.search)),
            Container(
              height: 200,
              width: 340,
              decoration: BoxDecoration(
                  color: AppColors.homeboxClr,
                  borderRadius: BorderRadius.circular(20)),
              child: const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image(image: AssetImage("assets/images/home-box1.png")),
                      Icon(Icons.signal_cellular_alt_sharp)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
