import 'package:bank_app/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomtextFormField extends StatefulWidget {
  const CustomtextFormField(
      {super.key,
      required this.hinttextt,
      required this.textFieldIcon,
      this.textFieldIConn});

  final String hinttextt;
  final Icon textFieldIcon;
  final Icon? textFieldIConn;

  @override
  State<CustomtextFormField> createState() => _CustomtextFormFieldState();
}

class _CustomtextFormFieldState extends State<CustomtextFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: AppColors.textfieldborder))),
      child: TextFormField(
        style: const TextStyle(color: Color(0xffffffff)),
        decoration: InputDecoration(
          hintText: widget.hinttextt,
          hintStyle: const TextStyle(color: AppColors.textColor),
          prefixIcon: widget.textFieldIcon,
          suffixIcon: widget.textFieldIConn,
        ),
      ),
    );
  }
}

class TextWidgett extends StatefulWidget {
  const TextWidgett({super.key, required this.labelTitle});

  final String labelTitle;

  @override
  State<TextWidgett> createState() => _TextWidgettState();
}

class _TextWidgettState extends State<TextWidgett> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.labelTitle,
      style: const TextStyle(
        color: AppColors.textFieldlabelText,
        fontSize: 14,
        fontFamily: "assets/fonts/Poppins-Regular.ttf",
      ),
    );
  }
}
