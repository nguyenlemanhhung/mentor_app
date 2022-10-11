import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../constants/colors.dart';
import '../../../constants/font.dart';

class SplashContent extends StatelessWidget {
  const SplashContent(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.image});
  final String title, subTitle, image;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 7,
            child: Image.asset(image),
          ),
          Flexible(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: PrimaryFont.bold700(30, textWhite),
                  textAlign: TextAlign.center,
                ),
                Text(
                  subTitle,
                  style: PrimaryFont.regular400(14, textGrey1),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
