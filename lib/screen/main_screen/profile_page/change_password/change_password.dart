import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mentor_app/components/appbar_page_no_title.dart';
import 'package:mentor_app/components/appbar_page_with_title.dart';
import 'package:mentor_app/components/full_width_button.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';
import 'package:mentor_app/screen/main_screen/main_screen.dart';
import 'package:mentor_app/screen/main_screen/profile_page/profile_page.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});
  static String routeName = '/change_password';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundMainScreen,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              AppbarPageWithTitle(
                text: 'Thay đổi mật khẩu',
                press: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(
                height: 50,
              ),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      style: PrimaryFont.regular400(14, textWhite),
                      decoration: InputDecoration(
                        labelText: 'Mật khẩu hiện tại',
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      style: PrimaryFont.regular400(14, textWhite),
                      decoration: InputDecoration(
                        labelText: 'Nhập mật khẩu mới',
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      style: PrimaryFont.regular400(14, textWhite),
                      decoration: InputDecoration(
                        labelText: 'Xác nhận mật khẩu mới',
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    FullWidthButton(
                      text: 'Lưu thay đổi',
                      press: () {
                        Navigator.pushNamed(context, MainScreen.routeName);
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
