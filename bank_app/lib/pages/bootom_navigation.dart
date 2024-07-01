import 'package:bank_app/constants/colors.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home_sharp),
            label: "Home",
            backgroundColor: AppColors.bootmNavColor),
        BottomNavigationBarItem(
            icon: Icon(Icons.home_sharp),
            label: "My Cards",
            backgroundColor: AppColors.bootmNavColor),
        BottomNavigationBarItem(
            icon: Icon(Icons.trending_down_sharp),
            label: "Statistics",
            backgroundColor: AppColors.bootmNavColor),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
            backgroundColor: AppColors.bootmNavColor)
      ],
      
            // const unselectedItemColor: AppC,
      // const unselectedLabelStyle: TextStyle(fontSize: 11),
      // const selectedItemColor: AppColors.navbaritem,
      // const selectedLabelStyle: TextStyle(fontSize: 11),

    );
  }

}
