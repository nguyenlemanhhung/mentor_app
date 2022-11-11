import 'package:flutter/material.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';

class AppbarPageNoTitle extends StatelessWidget {
  const AppbarPageNoTitle({
    Key? key,
    required this.press,
  }) : super(key: key);
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        alignment: Alignment.centerLeft,
        child: Image.asset(
          '/icons/back_arrow.png',
          color: Theme.of(context).brightness == Brightness.dark
              ? textWhite
              : darkColor,
        ),
      ),
    );
  }
}
