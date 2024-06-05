import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color scaffoldBackground = Color(0xFF1A1A1A);
  static const Color menuItemNotActive = Color(0xFFC1C1C1);
  static const Color menuItemActive = Color(0xFF4FC3F7);
    static const Color drawerActiveText = Color(0xFF4FC3F7);
    static const Color drawerNotActiveText = Color.fromARGB(255, 216, 211, 211);
  static const Color contactMeTopButtonBorder = Color(0xFF4FC3F7);
  static const Color mainSectionTextColor = Color(0xFFE1E1E1);
  static  Color drawerBackground = Color(0xFF73C6D8).withOpacity(0.925);

  static const Color aboutMeText = Color(0xFFE1E1E1);
  static const Color serviceItemDescription = Color(0xFFE1E1E1);
  static const Color projectTitle = Color(0xFFC1C1C1);
  static const Color projectTechnologyUsed = Color(0xFFA9A9A9);
  static const Color projectCategoryCardText = Color(0xFFF5F5F5);
  static const Color projectCategoryCardFilled = Color(0xFF484E53);
  static const Color hintForm = Color(0xFF8987A1);
  static const Color borderForm = Color(0xFFD6DDED);
  static const Color allRighstColor = Color(0xFFA9A9A9);

  static const Color focusedBorderTextField = Color(0xFF4FC3F7);

  static List<Color> gradientText = [const Color(0xFF4FC3F7), Colors.white];

  static List<Color> gradientServiceBox = [
    const Color(0xFF1C1C1C).withOpacity(0.5),
    const Color(0xFF050505),
  ];
}
