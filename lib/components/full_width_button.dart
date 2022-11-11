import 'package:flutter/material.dart';
import 'package:mentor_app/constants/colors.dart';

import '../constants/font.dart';

class FullWidthButton extends StatelessWidget {
  const FullWidthButton({super.key, required this.text, required this.press});
  final String text;

  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: MaterialButton(
        elevation: 0,
        padding: EdgeInsets.symmetric(
          // horizontal: 35,
          vertical: 15,
        ),
        color: bgBlue,
        child: Text(
          text,
          style: PrimaryFont.bold600(14, textWhite),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: press,
      ),
    );
  }
}
