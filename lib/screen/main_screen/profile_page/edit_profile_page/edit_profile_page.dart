import 'package:flutter/material.dart';
import 'package:mentor_app/components/appbar_page_with_title.dart';
import 'package:mentor_app/components/divider_with_text.dart';
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
                          child: InkWell(
                            onTap: () {
                              showModalBottomSheet<void>(
                                elevation: 0,
                                context: context,
                                builder: (BuildContext context) {
                                  return Container(
                                    color: backgroundMainScreen,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        bottom: 50,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          InkWell(
                                            onTap: () {},
                                            child: Container(
                                              padding: EdgeInsets.symmetric(
                                                vertical: 15,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Image.asset(
                                                    '/icons/photo-gallery.png',
                                                    width: 25,
                                                    height: 25,
                                                    color: backgroundYellow,
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    'Chọn ảnh từ Album',
                                                    style:
                                                        PrimaryFont.regular400(
                                                      14,
                                                      textSilver,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          DividerWithText(text: 'Or'),
                                          InkWell(
                                            onTap: () {},
                                            child: Container(
                                              padding: EdgeInsets.symmetric(
                                                vertical: 15,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Image.asset(
                                                    '/icons/photo-camera.png',
                                                    width: 25,
                                                    height: 25,
                                                    color: backgroundYellow,
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    'Chọn ảnh từ máy ảnh',
                                                    style:
                                                        PrimaryFont.regular400(
                                                      14,
                                                      textSilver,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            child: Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.white,
                              size: 15,
                            ),
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
            ],
          ),
        ),
      ),
    );
  }
}
