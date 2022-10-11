import 'package:flutter/material.dart';
import 'package:mentor_app/components/appbar_page.dart';
import 'package:mentor_app/components/full_width_button.dart';
import 'package:mentor_app/components/outline_button_custom.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';
import 'package:mentor_app/screen/main_screen/profile_page/edit_profile_page/components/form_edit_profile.dart';

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
              AppbarPage(text: 'Edit Profile'),
              Column(
                children: [
                  Container(
                    width: 112,
                    height: 112,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://cdn.pixabay.com/photo/2016/12/19/21/36/woman-1919143_960_720.jpg'),
                        fit: BoxFit.cover,
                      ),
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
                  FormEditProfile(),
                  FullWidthButton(
                    text: 'Save changes',
                    press: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
