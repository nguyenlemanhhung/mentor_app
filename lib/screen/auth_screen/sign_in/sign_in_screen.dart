import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mentor_app/components/divider_with_text.dart';
import 'package:mentor_app/components/full_width_button.dart';
import 'package:mentor_app/screen/auth_screen/sign_in/components/social_sign_in.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/screen/auth_screen/auth_page_header.dart';
import 'package:mentor_app/screen/auth_screen/sign_in/sign_in_with_email.dart';
import '../../../constants/font.dart';
import '../sign_up/sign_up_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});
  static String routeName = '/sign_in';
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
                SocialSignIn(),
                Spacer(
                  flex: 1,
                ),
                DividerWithText(
                  text: 'Or',
                ),
                Spacer(
                  flex: 1,
                ),
                FullWidthButton(
                  text: 'Sign in with Email',
                  press: () {
                    Navigator.pushNamed(context, SignInWithEmail.routeName);
                  },
                ),
                Spacer(
                  flex: 1,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Don’t have account? ',
                        style: PrimaryFont.regular400(14, textWhite),
                      ),
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(
                                context, SignUpScreen.routeName);
                          },
                        text: 'Sign Up',
                        style: PrimaryFont.regular400(14, textBlue1),
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
