import 'package:flutter/material.dart';
import 'package:mentor_app/components/success_screen_content.dart';
import 'package:mentor_app/screen/auth_screen/sign_in/sign_in_with_email.dart';

class SignUpSuccessScreen extends StatelessWidget {
  const SignUpSuccessScreen({
    Key? key,
  }) : super(key: key);
  static String routeName = '/sign_up_success_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SuccessScreenContent(
        title: 'Chúc mừng bạn đã\nđăng ký thành công',
        subTitle: 'Tiếp tục để đăng nhập vào ứng dụng',
        textButton: 'Đi tới trang đăng nhập',
        press: () {
          Navigator.pushNamed(context, SignInWithEmail.routeName);
        },
      ),
    );
  }
}
