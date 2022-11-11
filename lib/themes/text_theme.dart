import 'package:flutter/material.dart';
import 'package:mentor_app/constants/colors.dart';

TextTheme textLightTheme() {
  return const TextTheme(
    headline2: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 30,
      color: darkColor,
    ),
    // headline3: TextStyle(
    //   fontWeight: FontWeight.w700,
    //   fontSize: 24,
    //   color: darkColor,
    // ),
    headline5: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 14,
      color: textBlack4,
    ),
    caption: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: darkColor,
    ),
    subtitle1: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12,
      color: darkColor,
    ),
    subtitle2: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12,
      color: textBlue1,
    ),
    button: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 14,
      color: textWhite,
    ),
  );
}

TextTheme textDarkTheme() {
  return const TextTheme(
    headline1: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 36,
      color: textWhite,
    ),
    headline2: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 30,
      color: textWhite,
    ),
    headline5: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 14,
      color: textWhite,
    ),
    caption: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: textSilver,
    ),
    subtitle1: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12,
      color: textSilver,
    ),
    subtitle2: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12,
      color: textBlue1,
    ),
    button: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 14,
      color: textWhite,
    ),
  );
}
