import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mentor_app/components/outline_button_custom.dart';
import 'package:mentor_app/components/short_button.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';
import 'package:mentor_app/screen/main_screen/profile_page/components/header_profile.dart';
import 'package:mentor_app/screen/main_screen/profile_page/components/menu_profile.dart';
import 'package:mentor_app/screen/main_screen/profile_page/edit_profile_page/edit_profile_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Profile',
          style: PrimaryFont.bold700(30, textWhite),
        ),
        HeaderProfile(),
        Column(
          children: [
            MenuProfile(
              text: 'Edit profile',
              press: () {
                Navigator.pushNamed(context, EditProfilePage.routeName);
              },
            ),
            MenuProfile(
              text: 'Edit profile',
              press: () {},
            ),
            MenuProfile(
              text: 'Edit profile',
              press: () {},
            ),
            MenuProfile(
              text: 'Edit profile',
              press: () {},
            ),
            MenuProfile(
              text: 'Edit profile',
              press: () {},
            ),
            MenuProfile(
              text: 'Edit profile',
              press: () {},
            ),
            MenuProfile(
              text: 'Edit profile',
              press: () {},
            ),
          ],
        ),
        OutlineButtonCustom(
          text: 'Log Out',
          textColor: textRed,
          icon: Icons.logout,
          colorIcon: textRed,
          press: () {},
        ),
      ],
    );
  }
}
