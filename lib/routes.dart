import 'dart:js';

import 'package:flutter/material.dart';
import 'package:mentor_app/screen/auth_screen/forgot_password/forgot_password_screen.dart';
import 'package:mentor_app/screen/auth_screen/forgot_password/verification_screen.dart';
import 'package:mentor_app/screen/auth_screen/sign_in/sign_in_with_email.dart';
import 'package:mentor_app/screen/auth_screen/sign_up/sign_up_with_email.dart';
import 'package:mentor_app/screen/main_screen/all_mentor/all_mentor.dart';
import 'package:mentor_app/screen/main_screen/details_mentor/details_mentor.dart';
import 'package:mentor_app/screen/main_screen/profile_page/edit_profile_page/edit_profile_page.dart';
import 'package:mentor_app/screen/main_screen/profile_page/profile_page.dart';

import 'screen/auth_screen/sign_in/sign_in_screen.dart';
import 'screen/auth_screen/sign_up/sign_up_screen.dart';
import 'screen/main_screen/main_screen.dart';
import 'screen/splash_screen/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  //auth screen
  SplashScreen.routeName: (context) => SplashScreen(),
  // Sign In
  SignInScreen.routeName: (context) => SignInScreen(),
  SignInWithEmail.routeName: (context) => SignInWithEmail(),
  // Sign Up
  SignUpScreen.routeName: (context) => SignUpScreen(),
  SignUpWithEmail.routeName: (context) => SignUpWithEmail(),
  // Forgot Password
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  VerificationScreen.routeName: (context) => VerificationScreen(),
  //home screen
  MainScreen.routeName: (context) => MainScreen(),
  EditProfilePage.routeName: (context) => EditProfilePage(),

  //all mentor page
  AllMentorPage.routeName: (context) => AllMentorPage(),
};
