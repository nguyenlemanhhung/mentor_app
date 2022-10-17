import 'package:flutter/material.dart';
import 'package:mentor_app/components/full_width_button.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';
import 'package:mentor_app/screen/auth_screen/sign_in/sign_in_screen.dart';
import 'package:mentor_app/screen/auth_screen/sign_up/components.dart/form_sign_up.dart';

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
                  child: AppbarPageNoTitle(),
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
                            'Sign up with Email',
                            style: PrimaryFont.bold700(30, textWhite),
                          ),
                          Text(
                            'Input your account !',
                            style: PrimaryFont.regular400(14, textSilver)
                                .copyWith(height: 2),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      FormSignUp(),
                      const SizedBox(
                        height: 40,
                      ),
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
                      const SizedBox(
                        height: 40,
                      ),
                      FullWidthButton(
                        text: 'Sign up Now',
                        press: () {
                          Navigator.pushNamed(context, SignInScreen.routeName);
                        },
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
