import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:mentor_app/components/mentor_card.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';

import 'package:mentor_app/model/mentor_data.dart';
import 'package:mentor_app/model/test.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Mentor nổi bật',
                style: PrimaryFont.bold700(18, textWhite),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Xem tất cả',
                  style: PrimaryFont.bold600(14, textBlue1),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            child: MasonryGridView.count(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: mentorData.length,
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: MentorCard(
                    name: mentorData[index].name,
                    company: mentorData[index].company,
                    image: mentorData[index].image,
                    position: mentorData[index].position,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
