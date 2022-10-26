import 'package:flutter/material.dart';
import 'package:mentor_app/components/success_screen_content.dart';
import 'package:mentor_app/screen/auth_screen/sign_in/sign_in_with_email.dart';
import 'package:mentor_app/screen/main_screen/main_screen.dart';

class SignInSuccessScreen extends StatelessWidget {
  const SignInSuccessScreen({
    Key? key,
  }) : super(key: key);
  static String routeName = '/sign_in_success_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SuccessScreenContent(
        title: 'Chúc mừng bạn\nđăng nhập thành công',
        subTitle: 'Tiếp tục để vào ứng dụng',
        textButton: 'Đi tới trang chính',
        press: () {
          Navigator.pushNamed(context, MainScreen.routeName);
        },
      ),
    );
  }
}
