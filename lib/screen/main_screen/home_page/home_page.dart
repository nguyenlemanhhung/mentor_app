import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:mentor_app/components/line_separating_components.dart';
import 'package:mentor_app/components/mentor_card.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';
import 'package:mentor_app/model/field_data.dart';
import 'package:mentor_app/model/mentor_data.dart';
import 'package:mentor_app/screen/main_screen/all_mentor/all_mentor.dart';
import 'package:mentor_app/screen/main_screen/details_mentor/details_mentor.dart';
import 'package:mentor_app/screen/main_screen/home_page/components/field_item.dart';
import 'package:mentor_app/screen/main_screen/home_page/components/slider_banner.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('/images/border_avt.png'),
                              fit: BoxFit.cover),
                          shape: BoxShape.circle,
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(6),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('/images/avt.png'),
                                  fit: BoxFit.cover),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Xin chào,',
                            style: PrimaryFont.bold600(14, textWhite).copyWith(
                              height: 1.5,
                            ),
                          ),
                          Text(
                            'Nirmala Azalea',
                            style: PrimaryFont.bold600(14, textBlue1).copyWith(
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, AllMentorPage.routeName);
                    },
                    child: Image.asset('/icons/search.png'),
                  ),
                ],
              ),
            ),
          ),
          SliderBanner(),
          const SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lĩnh vực bạn quan tâm',
                  style: PrimaryFont.bold700(18, textWhite),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: MasonryGridView.count(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: fieldData.length,
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: backgroundInput,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                fieldData[index].image,
                                height: 25,
                                width: 25,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                fieldData[index].title,
                                style: PrimaryFont.bold600(14, textWhite),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          LineSeparatingComponents(),
          Padding(
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
                              builder: (context) => DetailsMentor(
                                  mentorContent: mentorData[index]),
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
          ),
        ],
      ),
    );
  }
}
