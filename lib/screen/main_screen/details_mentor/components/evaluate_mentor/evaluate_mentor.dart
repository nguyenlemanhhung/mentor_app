import 'package:flutter/material.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';
import 'package:mentor_app/screen/main_screen/details_mentor/components/evaluate_mentor/components/evaluate_content.dart';
import 'package:mentor_app/screen/main_screen/details_mentor/components/evaluate_mentor/components/evaluate_item.dart';

class EvaluateMentor extends StatelessWidget {
  const EvaluateMentor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        children: [
          IntrinsicHeight(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: bgYellow,
                          ),
                          Text(
                            '4,6',
                            style: PrimaryFont.bold700(30, textWhite),
                          ),
                        ],
                      ),
                      Text(
                        '90 reviews',
                        style: PrimaryFont.regular400(12, textGrey1).copyWith(
                          height: 1.8,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  VerticalDivider(
                    color: textBlue2,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: [
                      EvaluateItem(
                        text: '5',
                        numberOfReviews: '20',
                      ),
                      EvaluateItem(
                        text: '4',
                        numberOfReviews: '10',
                      ),
                      EvaluateItem(
                        text: '3',
                        numberOfReviews: '20',
                      ),
                      EvaluateItem(
                        text: '2',
                        numberOfReviews: '10',
                      ),
                      EvaluateItem(
                        text: '1',
                        numberOfReviews: '10',
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            children: [
              EvaluateContent(
                name: 'Annisa Azalea',
                numberStar: '4',
                timeEvaluate: '6 February 2022',
                textEvaluate:
                    'In molestie sed dui nisi, egestas facilisis non. Pharetra, blandit tellus nisl ultrices egestas dui in suspendisse.',
              ),
              EvaluateContent(
                name: 'Joko Rakabuming',
                numberStar: '5',
                timeEvaluate: '6 February 2022',
                textEvaluate:
                    'In molestie sed dui nisi, egestas facilisis non. Pharetra, blandit tellus nisl ultrices egestas dui in suspendisse.',
              ),
              EvaluateContent(
                name: 'Annisa Azalea',
                numberStar: '3',
                timeEvaluate: '6 February 2022',
                textEvaluate:
                    'In molestie sed dui nisi, egestas facilisis non. Pharetra, blandit tellus nisl ultrices egestas dui in suspendisse.',
              ),
              EvaluateContent(
                name: 'Annisa Azalea',
                numberStar: '4',
                timeEvaluate: '6 February 2022',
                textEvaluate:
                    'In molestie sed dui nisi, egestas facilisis non. Pharetra, blandit tellus nisl ultrices egestas dui in suspendisse.',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
