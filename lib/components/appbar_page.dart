import 'package:flutter/material.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';

class AppbarPage extends StatelessWidget {
  const AppbarPage({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            alignment: Alignment.centerLeft,
            child: Image.asset('/icons/back_arrow.png'),
          ),
        ),
        Text(
          text,
          style: PrimaryFont.bold700(18, textWhite),
        ),
        SizedBox(),
      ],
    );
  }
}
