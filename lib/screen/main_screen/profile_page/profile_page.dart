import 'package:flutter/material.dart';
import 'package:mentor_app/components/outline_button_custom.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';
import 'package:mentor_app/screen/main_screen/profile_page/change_password/change_password.dart';
import 'package:mentor_app/screen/main_screen/profile_page/components/header_profile.dart';
import 'package:mentor_app/screen/main_screen/profile_page/components/menu_profile.dart';
import 'package:mentor_app/screen/main_screen/profile_page/edit_profile_page/edit_profile_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  // static String routeName = '/profile_page';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Cá nhân',
                style: PrimaryFont.bold700(30, textWhite),
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  HeaderProfile(),
                  const SizedBox(
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cài đặt',
                        style: PrimaryFont.bold600(12, textGrey1),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          MenuProfile(
                            text: 'Hồ sơ cá nhân',
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
                          MenuProfile(
                            text: 'Đổi mật khẩu',
                            press: () {
                              Navigator.pushNamed(
                                  context, ChangePassword.routeName);
                            },
                          ),
                          MenuProfile(
                            text: 'Xoá tài khoản',
                            press: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: OutlineButtonCustom(
                      text: 'Đăng xuất',
                      textColor: textRed,
                      icon: Icons.logout,
                      colorIcon: textRed,
                      press: () {
                        showDialog(
                          barrierColor: secondaryGrey.withOpacity(0.64),
                          context: context,
                          builder: (_) => AlertDialog(
                            backgroundColor: backgroundMainScreen,
                            contentPadding: EdgeInsets.all(0),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.symmetric(vertical: 20),
                                  child: Text(
                                    'Bạn chắc chắn muốn đăng xuất ?',
                                    style: PrimaryFont.bold600(16, textWhite),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border(
                                        top: BorderSide(color: textBlue2),
                                      ),
                                    ),
                                    width: double.infinity,
                                    padding: EdgeInsets.symmetric(vertical: 15),
                                    child: Text(
                                      'Đăng xuất',
                                      style: PrimaryFont.bold600(14, textRed),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border(
                                        top: BorderSide(color: textBlue2),
                                      ),
                                    ),
                                    width: double.infinity,
                                    padding: EdgeInsets.symmetric(vertical: 15),
                                    child: Text(
                                      'Huỷ',
                                      style: PrimaryFont.bold600(14, textGrey1),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
