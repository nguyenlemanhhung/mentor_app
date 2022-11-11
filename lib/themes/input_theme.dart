import 'package:flutter/material.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';

InputDecorationTheme inputDarkTheme() {
  return InputDecorationTheme(
    filled: true,
    fillColor: bgInput,
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
      borderSide: BorderSide(color: bgInput),
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

InputDecorationTheme inputLightTheme() {
  return InputDecorationTheme(
    filled: true,
    fillColor: Colors.white,
    hintStyle: PrimaryFont.regular400(14, textGrey1),
    labelStyle: PrimaryFont.medium500(14, darkColor),
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
      borderSide: BorderSide(color: bgInput),
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
