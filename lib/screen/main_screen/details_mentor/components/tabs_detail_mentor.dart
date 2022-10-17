import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';
import 'package:mentor_app/screen/main_screen/details_mentor/components/certificate_mentor/certificate_mentor.dart';
import 'package:mentor_app/screen/main_screen/details_mentor/components/evaluate_mentor/evaluate_mentor.dart';
import 'package:mentor_app/screen/main_screen/details_mentor/components/mentori_blog/mentori_blog.dart';
import 'package:mentor_app/screen/main_screen/details_mentor/components/mentoring_program.dart/mentoring_program.dart';
import 'package:mentor_app/screen/main_screen/details_mentor/components/profile_mentor/profile_mentor.dart';

class TabsDetailMentor extends StatefulWidget {
  const TabsDetailMentor({Key? key}) : super(key: key);

  @override
  State<TabsDetailMentor> createState() => _TabsDetailMentorState();
}

class _TabsDetailMentorState extends State<TabsDetailMentor> {
  List<String> categories = [
    'Hồ sơ',
    'Chương trình cố vấn',
    'Đánh giá',
    'Mentori Blog',
    'Chứng chỉ',
  ];

  List<Widget> categoryContent = [
    ProfileMentor(),
    MentoringProgram(),
    EvaluateMentor(),
    MentoriBlog(),
    CertificateMentor(),
  ];
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 40,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: categories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index) {
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          current = index;
                        });
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 8,
                        ),
                        // margin: const EdgeInsets.only(right: 14),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: current == index
                                  ? backgroundBlue
                                  : Colors.transparent,
                            ),
                          ),
                        ),

                        child: Text(
                          categories[index],
                          style: PrimaryFont.medium500(
                              14, current == index ? textWhite : textGrey1),
                        ),
                      ),
                    ),
                  ],
                );
              }),
        ),
        categoryContent[current],
      ],
    );
  }
}
