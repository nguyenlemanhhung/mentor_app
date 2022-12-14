import 'package:flutter/material.dart';
import 'package:mentor_app/components/appbar_page_no_title.dart';
import 'package:mentor_app/components/button_with_icon.dart';
import 'package:mentor_app/components/icon_button_outline.dart';
import 'package:mentor_app/components/line_separating_components.dart';
import 'package:mentor_app/constants/colors.dart';

import 'package:mentor_app/models/mentor_data.dart';
import 'package:mentor_app/screen/main_screen/details_mentor/components/header_details_page.dart';
import 'package:mentor_app/screen/main_screen/details_mentor/components/tabs_detail_mentor.dart';

class DetailsMentor extends StatelessWidget {
  const DetailsMentor({Key? key, required this.mentorContent})
      : super(key: key);
  static String routeName = '/mentor/details';

  final MentorContent mentorContent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('/images/auth/bg_auth.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  AppbarPageNoTitle(
                    press: () {
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  HeaderDetailsPage(mentorContent: mentorContent),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ButtonWithIcon(
                        press: () {},
                        icon: Icons.calendar_month,
                        text: '?????t l???ch',
                        color: textWhite,
                        backgroundColor: bgBlue,
                      ),
                      ButtonWithIcon(
                        press: () {},
                        icon: Icons.add_box_outlined,
                        text: 'Theo d??i',
                        color: textSilver,
                        backgroundColor: bgInput,
                      ),
                      IconButtonOutline(
                        press: () {},
                        color: textSilver,
                        borderColor: textGrey1,
                        icon: Icons.message_outlined,
                      ),
                      IconButtonOutline(
                        press: () {},
                        color: textSilver,
                        borderColor: textGrey1,
                        icon: Icons.format_list_bulleted_sharp,
                      ),
                    ],
                  ),
                  LineSeparatingComponents(),
                  TabsDetailMentor(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
