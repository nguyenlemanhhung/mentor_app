import 'package:flutter/material.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';

class ProfileMentor extends StatelessWidget {
  const ProfileMentor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      width: double.infinity,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(
              vertical: 5,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: bgInput,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Giới thiệu',
                  style: PrimaryFont.bold600(14, textWhite),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Text(
                      '- Hoà đồng, thân thiện, nhưng rất nghiêm túc và đồi hỏi trách nhiệm cao trong công việc',
                      style: PrimaryFont.regular400(14, textGrey1),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(
              vertical: 5,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: bgInput,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Kinh nghiệm làm việc',
                  style: PrimaryFont.bold600(14, textWhite),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Text(
                      '- Hoà đồng, thân thiện, nhưng rất nghiêm túc và đồi hỏi trách nhiệm cao trong công việc',
                      style: PrimaryFont.regular400(14, textGrey1),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(
              vertical: 5,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: bgInput,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Học vấn',
                  style: PrimaryFont.bold600(14, textWhite),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Text(
                      '- Hoà đồng, thân thiện, nhưng rất nghiêm túc và đồi hỏi trách nhiệm cao trong công việc',
                      style: PrimaryFont.regular400(14, textGrey1),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
