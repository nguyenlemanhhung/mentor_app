import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';
import 'package:mentor_app/screen/main_screen/all_mentor/all_mentor.dart';

import '../../../../components/mentor_card.dart';
import '../../../../model/mentor_data.dart';
import '../../details_mentor/details_mentor.dart';

class MentorComponent extends StatelessWidget {
  const MentorComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Mentor nổi bật',
                style: PrimaryFont.bold700(18, textWhite),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, AllMentorPage.routeName);
                },
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
              itemCount: 6,
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            DetailsMentor(mentorContent: mentorData[index]),
                      ),
                    );
                  },
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
