import 'package:flutter/material.dart';
import 'package:veecom/domain/utils/app_colors/app_colors.dart';

final mLightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.light(
    brightness: Brightness.light,
    primary: AppColors.lightPrimaryColor,
    // onPrimary: AppColors.lightOnPrimaryColor,
    primaryContainer: AppColors.lightPrimaryContainerColor,
    onPrimaryContainer: AppColors.lightOnPrimaryContainerTextBlackColor,
    secondaryContainer: AppColors.lightSecondaryContainerColor,
  ),
  textTheme: TextTheme(
      titleSmall: TextStyle(fontFamily: "segoe", fontWeight: FontWeight.normal),
      titleMedium: TextStyle(fontFamily: "segoe", fontWeight: FontWeight.w300),
      titleLarge: TextStyle(fontFamily: "segoe", fontWeight: FontWeight.w400),

      // light font
      labelSmall: TextStyle(fontFamily: "segoe", fontWeight: FontWeight.w100)),
);
final mDarkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.dark(
    brightness: Brightness.dark,
    primary: AppColors.darkPrimaryColor,
    surface: AppColors.darkPrimaryBackgroundColor,
    primaryContainer: AppColors.darkPrimaryContainer,
    onPrimaryContainer: AppColors.darkOnPrimaryContainerColor,
  ),
  textTheme: TextTheme(
      titleSmall: TextStyle(fontFamily: "segoe", fontWeight: FontWeight.normal),
      titleMedium: TextStyle(fontFamily: "segoe", fontWeight: FontWeight.w300),
      titleLarge: TextStyle(fontFamily: "segoe", fontWeight: FontWeight.w400),

      // light font
      labelSmall: TextStyle(fontFamily: "segoe", fontWeight: FontWeight.w100)),
);
