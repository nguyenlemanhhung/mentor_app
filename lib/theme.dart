import 'package:flutter/material.dart';
import 'package:mentor_app/constants/font.dart';

import 'constants/colors.dart';

ThemeData theme() {
  return ThemeData(
    unselectedWidgetColor: backgroundSilver,

    fontFamily: 'SF Pro Display',
    // scaffoldBackgroundColor: backgroundWhite,
    appBarTheme: const AppBarTheme(
      // color: backgroundWhite,
      elevation: 0,
      iconTheme: IconThemeData(
          // color: secondaryGray5,
          ),
    ),
    inputDecorationTheme: inputDecorationTheme(),
  );
}

InputDecorationTheme inputDecorationTheme() {
  // OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  //   borderRadius: BorderRadius.circular(10),
  //   borderSide: BorderSide(color: textBlue1),
  //   gapPadding: 10,
  // );
  return InputDecorationTheme(
    filled: true,
    fillColor: backgroundInput,
    hintStyle: PrimaryFont.regular400(14, textGrey1),
    labelStyle: PrimaryFont.medium500(14, textWhite),
    floatingLabelBehavior: FloatingLabelBehavior.always,
    floatingLabelAlignment: FloatingLabelAlignment.start,
    contentPadding: EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 18,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: textBlue1),
      gapPadding: 10,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: backgroundInput),
      gapPadding: 10,
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: textRed),
      gapPadding: 10,
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: textRed),
      gapPadding: 10,
    ),
    errorStyle: PrimaryFont.regular400(12, textGrey1).copyWith(height: 1.5),
  );
}
