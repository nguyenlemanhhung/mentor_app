import 'package:flutter/material.dart';
import 'package:mentor_app/components/appbar_page_with_title.dart';
import 'package:mentor_app/components/full_width_button.dart';
import 'package:mentor_app/components/outline_button_custom.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';
import 'package:mentor_app/screen/main_screen/main_screen.dart';
import 'package:mentor_app/screen/main_screen/profile_page/components/header_profile.dart';
import 'package:mentor_app/screen/main_screen/profile_page/edit_profile_page/components/form_edit_profile.dart';
import 'package:mentor_app/screen/main_screen/profile_page/edit_profile_page/components/tabbar_profile.dart';
import 'package:mentor_app/screen/main_screen/profile_page/profile_page.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);
  static String routeName = '/edit_profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundMainScreen,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              AppbarPageWithTitle(
                text: 'Hồ sơ cá nhân',
                press: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 110,
                height: 110,
                child: Stack(
                  children: [
                    Image.asset('/images/border_avt.png'),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(6),
                      child: Image.asset('/images/avt.png'),
                    ),
                    Positioned(
                      bottom: 7,
                      right: 7,
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: backgroundBlue,
                          ),
                          child: Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: TabBarProfile(),
              ),
              // Column(
              //   children: [
              //     Container(
              //       width: 110,
              //       height: 110,
              //       child: Stack(
              //         children: [
              //           Image.asset('/images/border_avt.png'),
              //           Container(
              //             alignment: Alignment.center,
              //             padding: EdgeInsets.all(6),
              //             child: Image.asset('/images/avt.png'),
              //           ),
              //           Positioned(
              //             bottom: 7,
              //             right: 7,
              //             child: GestureDetector(
              //               onTap: () {},
              //               child: Container(
              //                 height: 25,
              //                 width: 25,
              //                 decoration: BoxDecoration(
              //                   shape: BoxShape.circle,
              //                   color: backgroundBlue,
              //                 ),
              //                 child: Icon(
              //                   Icons.camera_alt_outlined,
              //                   color: Colors.white,
              //                   size: 15,
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //     FormEditProfile(),
              //     FullWidthButton(
              //       text: 'Lưu thay đổi',
              //       press: () {
              //         Navigator.pushNamed(context, MainScreen.routeName);
              //       },
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
