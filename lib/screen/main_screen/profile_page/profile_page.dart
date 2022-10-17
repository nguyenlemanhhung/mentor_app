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
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Flexible(
                flex: 1,
                child: Text(
                  'Profile',
                  style: PrimaryFont.bold700(30, textWhite),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Flexible(
                flex: 9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeaderProfile(),
                    Column(
                      children: [
                        MenuProfile(
                          text: 'Chỉnh sửa hồ sơ',
                          press: () {
                            Navigator.pushNamed(
                                context, EditProfilePage.routeName);
                          },
                        ),
                        MenuProfile(
                          text: 'Yêu thích',
                          press: () {},
                        ),
                        MenuProfile(
                          text: 'Tìm bạn bè',
                          press: () {},
                        ),
                        MenuProfile(
                          text: 'Lĩnh vực quan tâm',
                          press: () {},
                        ),
                        MenuProfile(
                          text: 'Đăng lý làm Mentor',
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
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
