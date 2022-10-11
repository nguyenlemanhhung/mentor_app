import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';

class MenuProfile extends StatelessWidget {
  const MenuProfile({super.key, required this.text, required this.press});
  final String text;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        padding: EdgeInsets.only(
          bottom: 10,
          left: 5,
          right: 5,
        ),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: textBlue2,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: PrimaryFont.regular400(14, textWhite),
            ),
            Image.asset('/icons/next_arrow.png')
          ],
        ),
      ),
    );
  }
}
