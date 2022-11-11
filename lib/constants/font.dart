import 'dart:js';

import 'package:flutter/material.dart';

class PrimaryFont {
  static TextStyle bold700(double size, Color color) {
    return TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: size,
      color: color,
    );
  }

  static TextStyle bold600(double size, Color color) {
    return TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: size,
      color: color,
    );
  }

  static TextStyle medium500(double size, Color color) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: size,
      color: color,
    );
  }

  static TextStyle regular400(double size, Color color) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: size,
      color: color,
    );
  }
}
