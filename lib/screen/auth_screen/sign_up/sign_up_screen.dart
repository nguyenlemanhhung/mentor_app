import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mentor_app/screen/auth_screen/sign_up/components.dart/form_sign_up.dart';

import '../../../components/divider_with_text.dart';
import '../../../components/full_width_button.dart';
import '../../../components/social_auth.dart';
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
            image: AssetImage('/images/auth/bg_auth.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                FormSignUp(),
                FullWidthButton(
                  text: 'Sign Up',
                  press: () {},
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Already have account?',
                        style: PrimaryFont.regular400(14, textGrey1),
                      ),
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(
                                context, SignInScreen.routeName);
                          },
                        text: 'Sign In',
                        style: PrimaryFont.regular400(14, textWhite),
                      ),
                    ],
                  ),
                ),
                DividerWithText(),
                SocialAuth(),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            'By Creating your account you have to agree with our ',
                        style: PrimaryFont.regular400(12, textGrey1),
                      ),
                      TextSpan(
                        text: 'Terms and Condition',
                        style: PrimaryFont.regular400(12, textBlue1),
                      ),
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
