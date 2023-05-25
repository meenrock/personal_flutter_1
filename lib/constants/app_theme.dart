import 'package:personal_flutter_1/constants/colors.dart';
import 'package:personal_flutter_1/constants/font_family.dart';
import 'package:flutter/material.dart';

final ThemeData themeData = ThemeData(
  fontFamily: FontFamily.kanit,
  brightness: Brightness.light,
  textTheme: const TextTheme(
    headline1: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w500,
      color: AppColors.darkBlue,
    ),
    headline2: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: AppColors.darkBlue,
    ),
    headline3: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.normal,
      color: AppColors.darkBlue,
    ),
    headline4: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: AppColors.darkBlue,
    ),
    headline5: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColors.darkBlue,
    ),
    headline6: TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w500,
      color: AppColors.darkBlue,
    ),
    headlineLarge: TextStyle(
        fontSize: 56,
        fontWeight: FontWeight.bold,
        color: AppColors.darkBlue,
        height: 1.2),
    subtitle1: TextStyle(
      fontSize: 16,
      color: AppColors.darkBlue,
      fontWeight: FontWeight.w500,
    ),
    subtitle2: TextStyle(
      fontSize: 14,
      color: AppColors.darkBlue,
      fontWeight: FontWeight.w300,
    ),
    bodyText1: TextStyle(
      fontSize: 14,
      color: AppColors.darkBlue,
      fontWeight: FontWeight.w200,
    ),
    bodyText2: TextStyle(
      fontSize: 12,
      color: AppColors.darkBlue,
      fontWeight: FontWeight.w100,
    ),
    button: TextStyle(
      color: AppColors.darkBlue,
      fontSize: 16,
      fontWeight: FontWeight.normal,
    ),
  ),
);
