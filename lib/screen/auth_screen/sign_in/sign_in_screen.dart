import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mentor_app/components/divider_with_text.dart';
import 'package:mentor_app/components/full_width_button.dart';
import 'package:mentor_app/components/social_auth.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/screen/auth_screen/forgot_password/forgot_password_screen.dart';
import 'package:mentor_app/screen/auth_screen/sign_in/components/form_sign_in.dart';
import 'package:mentor_app/screen/auth_screen/sign_in/components/switch_auth.dart';
import 'package:mentor_app/screen/main_screen/main_screen.dart';

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
                FormSignIn(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SwitchAuth(),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                            context, ForgotPasswordScreen.routeName);
                      },
                      child: Text('Forgot Password ?',
                          style: PrimaryFont.medium500(14, textGrey1)),
                    ),
                  ],
                ),
                FullWidthButton(
                  text: 'Sign In',
                  press: () {
                    Navigator.pushNamed(context, MainScreen.routeName);
                  },
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Don’t have account?',
                        style: PrimaryFont.regular400(14, textGrey1),
                      ),
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(
                                context, SignUpScreen.routeName);
                          },
                        text: 'Sign Up',
                        style: PrimaryFont.regular400(14, textWhite),
                      ),
                    ],
                  ),
                ),
                DividerWithText(),
                SocialAuth(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
