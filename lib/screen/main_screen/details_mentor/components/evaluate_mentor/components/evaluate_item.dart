import 'package:flutter/material.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';

class EvaluateItem extends StatelessWidget {
  const EvaluateItem({
    Key? key,
    required this.text,
    required this.numberOfReviews,
  }) : super(key: key);
  final String text, numberOfReviews;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 7,
      ),
      decoration: BoxDecoration(
        color: bgInput,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Icon(
                Icons.star,
                size: 15,
                color: bgYellow,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                text,
                style: PrimaryFont.bold600(14, textWhite),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                numberOfReviews,
                style: PrimaryFont.regular400(10, textGrey1),
              ),
              Text(
                ' reviews',
                style: PrimaryFont.regular400(10, textGrey1),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
