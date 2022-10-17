import 'package:flutter/material.dart';
import 'package:mentor_app/constants/font.dart';

class ButtonWithIcon extends StatelessWidget {
  const ButtonWithIcon(
      {Key? key,
      required this.color,
      required this.backgroundColor,
      required this.text,
      required this.icon,
      required this.press})
      : super(key: key);
  final color, backgroundColor, text, icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: backgroundColor,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: 15,
              color: color,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              text,
              style: PrimaryFont.regular400(12, color),
            ),
          ],
        ),
      ),
    );
  }
}
