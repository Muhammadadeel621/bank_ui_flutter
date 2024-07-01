import 'package:bank_app/constants/colors.dart';
import 'package:flutter/material.dart';

class CircleHome extends StatefulWidget {
  const CircleHome({super.key, required this.homeIcon});

  final IconData homeIcon;
  @override
  State<CircleHome> createState() => _CircleHomeState();
}

class _CircleHomeState extends State<CircleHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      width: 42,
      decoration: BoxDecoration(
          color: AppColors.homeCircleClr,
          borderRadius: BorderRadius.circular(50)),
      child: Center(
          child: Icon(
        widget.homeIcon,
        color: AppColors.textColor,
      )),
    );
  }
}
