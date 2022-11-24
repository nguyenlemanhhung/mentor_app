import 'package:flutter/material.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/themes/input_theme.dart';
import 'package:mentor_app/themes/text_theme.dart';

import '../constants/font.dart';

abstract class AppTheme {
  const AppTheme._();

  static ThemeData light() => ThemeData(
        scaffoldBackgroundColor: bgLightTheme,
        textTheme: textLightTheme(),
        fontFamily: 'SF Pro Display',
        brightness: Brightness.light,
        inputDecorationTheme: inputLightTheme(),
        appBarTheme: const AppBarTheme(
          // color: Colors.white,
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(
            color: darkColor,
          ),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: bgLightTheme,
          unselectedItemColor: textGrey1,
          selectedItemColor: darkColor,
        ),
      );

  static ThemeData dark() => ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: bgBottomNavigationBar,
          unselectedItemColor: textGrey1,
          selectedItemColor: textWhite,
        ),
        fontFamily: 'SF Pro Display',
        brightness: Brightness.dark,
        scaffoldBackgroundColor: bgDarkTheme,
        appBarTheme: const AppBarTheme(
          color: bgDarkTheme,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
        inputDecorationTheme: inputDarkTheme(),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: textDarkTheme(),
      );
}
