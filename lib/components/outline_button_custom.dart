import 'package:flutter/material.dart';
import 'package:mentor_app/constants/colors.dart';

import '../constants/font.dart';

class OutlineButtonCustom extends StatelessWidget {
  const OutlineButtonCustom({
    Key? key,
    required this.text,
    required this.icon,
    required this.colorIcon,
    required this.press,
    required this.textColor,
  }) : super(key: key);
  final String text;
  final IconData icon;
  final Color colorIcon, textColor;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: OutlinedButton.icon(
        onPressed: press,
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          side: BorderSide(color: Colors.blue), // foreground border
        ),
        icon: Icon(
          icon,
          color: colorIcon,
        ),
        label: Text(
          text,
          style: PrimaryFont.bold600(14, textColor),
        ),
      ),
    );
  }
}
