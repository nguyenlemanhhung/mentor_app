import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mentor_app/screen/auth_screen/auth_page_header.dart';

import 'package:mentor_app/screen/auth_screen/sign_up/components/social_sign_up.dart';
import 'package:mentor_app/screen/auth_screen/sign_up/sign_up_with_email.dart';

import '../../../components/divider_with_text.dart';
import '../../../components/full_width_button.dart';

import '../../../constants/colors.dart';
import '../../../constants/font.dart';
import '../sign_in/sign_in_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  static String routeName = '/sign_up';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Theme.of(context).brightness == Brightness.dark
                ? '/images/background/bgAuthDark.png'
                : '/images/background/bgAuthLight.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                Spacer(
                  flex: 2,
                ),
                AuthPageHeader(),
                Spacer(
                  flex: 1,
                ),
                SocialSignUp(),
                Spacer(
                  flex: 1,
                ),
                DividerWithText(
                  text: 'Hoặc',
                ),
                Spacer(
                  flex: 1,
                ),
                FullWidthButton(
                  text: 'Đăng ký bằng Email',
                  press: () {
                    Navigator.pushNamed(context, SignUpWithEmail.routeName);
                  },
                ),
                Spacer(
                  flex: 1,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Bạn đã có tài khoản? ',
                        style: Theme.of(context).textTheme.caption,
                      ),
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(
                                context, SignInScreen.routeName);
                          },
                        text: 'Đăng nhập',
                        style: Theme.of(context).textTheme.caption?.apply(
                              color: textBlue1,
                              fontWeightDelta: 600,
                            ),
                      ),
                    ],
                  ),
                ),
                Spacer(
                  flex: 3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
