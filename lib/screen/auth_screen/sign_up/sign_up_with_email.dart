import 'package:flutter/material.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';
import 'package:mentor_app/screen/auth_screen/sign_up/components/form_sign_up.dart';
import 'package:mentor_app/screen/auth_screen/sign_up/sign_up_screen.dart';
import '../../../components/appbar_page_no_title.dart';

class SignUpWithEmail extends StatelessWidget {
  const SignUpWithEmail({Key? key}) : super(key: key);

  static String routeName = '/sign_up_with_email';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('/images/auth/bg_auth.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: AppbarPageNoTitle(
                    press: () {
                      Navigator.pushNamed(context, SignUpScreen.routeName);
                    },
                  ),
                ),
                Flexible(
                  flex: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Đăng ký bằng Email',
                            style: PrimaryFont.bold700(30, textWhite),
                          ),
                          Text(
                            'Nhập tài khoản của bạn !',
                            style: PrimaryFont.regular400(14, textSilver)
                                .copyWith(height: 2),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      FormSignUp(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
