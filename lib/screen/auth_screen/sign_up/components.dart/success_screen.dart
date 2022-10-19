import 'package:flutter/material.dart';
import 'package:mentor_app/components/full_width_button.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';
import 'package:mentor_app/screen/auth_screen/sign_in/sign_in_with_email.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);
  static String routeName = '/success_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('/images/Success-Screen.png'),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(
                flex: 3,
              ),
              Image.asset(
                '/images/tick.png',
                height: 200,
              ),
              Spacer(
                flex: 1,
              ),
              Text(
                'Đăng ký tài khoản thành công',
                style: PrimaryFont.bold700(24, textWhite),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Quay lại để đăng nhập bằng Email',
                style: PrimaryFont.medium500(18, textSilver),
              ),
              Spacer(
                flex: 1,
              ),
              FullWidthButton(
                text: 'Quay lại trang đăng nhập',
                press: () {
                  Navigator.pushNamed(context, SignInWithEmail.routeName);
                },
              ),
              Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
