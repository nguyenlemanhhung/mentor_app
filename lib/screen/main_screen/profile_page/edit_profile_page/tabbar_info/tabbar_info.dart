import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';
import 'package:mentor_app/screen/main_screen/profile_page/edit_profile_page/tabbar_info/components/certificate/certificate.dart';
import 'package:mentor_app/screen/main_screen/profile_page/edit_profile_page/tabbar_info/components/education/education.dart';
import 'package:mentor_app/screen/main_screen/profile_page/edit_profile_page/tabbar_info/components/intro/intro.dart';
import 'package:mentor_app/screen/main_screen/profile_page/edit_profile_page/tabbar_info/components/prize/prize.dart';
import 'package:mentor_app/screen/main_screen/profile_page/edit_profile_page/tabbar_info/components/skills/skills.dart';
import 'package:mentor_app/screen/main_screen/profile_page/edit_profile_page/tabbar_info/components/work_experience/work_experience.dart';

class TabBarInfo extends StatelessWidget {
  const TabBarInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Intro(),
            WorkExperience(),
            Education(),
            Skills(),
            Certificate(),
            Prize(),
          ],
        ),
      ),
    );
  }
}
