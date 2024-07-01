import 'package:bank_app/constants/colors.dart';
import 'package:flutter/material.dart';

class iconScreen extends StatefulWidget {
  const iconScreen({super.key});

  @override
  State<iconScreen> createState() => _iconScreenState();
}

class _iconScreenState extends State<iconScreen> {
  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.arrow_back_ios,
      color: AppColors.iconarrow,
      size: 20,
    );
  }
}
