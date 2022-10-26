import 'package:flutter/material.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';

class EvaluateContent extends StatelessWidget {
  const EvaluateContent({
    Key? key,
    required this.name,
    required this.numberStar,
    required this.timeEvaluate,
    required this.textEvaluate,
  }) : super(key: key);
  final String name, numberStar, timeEvaluate, textEvaluate;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: PrimaryFont.bold600(14, textWhite),
            ),
            Row(
              children: [
                Text(
                  numberStar,
                  style: PrimaryFont.bold600(14, textWhite),
                ),
                const SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.star,
                  color: backgroundYellow,
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          timeEvaluate,
          style: PrimaryFont.regular400(12, textGrey1),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          textEvaluate,
          style: PrimaryFont.regular400(12, textWhite).copyWith(
            height: 1.5,
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          child: Divider(color: textBlue2),
        ),
      ],
    );
  }
}
