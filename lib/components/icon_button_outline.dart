import 'package:flutter/material.dart';
import 'package:mentor_app/constants/font.dart';

class IconButtonOutline extends StatelessWidget {
  const IconButtonOutline(
      {Key? key,
      required this.color,
      required this.borderColor,
      required this.icon,
      required this.press})
      : super(key: key);
  final color, borderColor, icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: borderColor,
          ),
        ),
        child: Icon(
          icon,
          size: 15,
          color: color,
        ),
      ),
    );
  }
}
