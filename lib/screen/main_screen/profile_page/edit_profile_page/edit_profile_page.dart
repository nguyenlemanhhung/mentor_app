import 'package:flutter/material.dart';
import 'package:mentor_app/components/appbar_page_with_title.dart';
import 'package:mentor_app/components/full_width_button.dart';
import 'package:mentor_app/components/outline_button_custom.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';
import 'package:mentor_app/screen/main_screen/profile_page/components/header_profile.dart';
import 'package:mentor_app/screen/main_screen/profile_page/edit_profile_page/components/form_edit_profile.dart';
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
              Flexible(
                flex: 1,
                child: AppbarPageWithTitle(text: 'Edit Profile'),
              ),
              Flexible(
                flex: 10,
                child: Column(
                  children: [
                    Spacer(
                      flex: 1,
                    ),
                    Column(
                      children: [
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
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        OutlineButtonCustom(
                          text: 'Change Avatar',
                          icon: Icons.camera_alt_outlined,
                          colorIcon: backgroundBlue,
                          press: () {},
                          textColor: textBlue1,
                        ),
                      ],
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    FormEditProfile(),
                    Spacer(
                      flex: 2,
                    ),
                    FullWidthButton(
                      text: 'Save changes',
                      press: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
