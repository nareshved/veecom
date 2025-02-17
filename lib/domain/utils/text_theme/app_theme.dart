import 'package:flutter/material.dart';

final mLightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.light(
    brightness: Brightness.light,

  ),

  textTheme: TextTheme(
    titleSmall: TextStyle(
      fontFamily: "segoe",
      
    ),
    titleMedium: TextStyle(

    )
  )
);
final mDarkTheme = ThemeData();