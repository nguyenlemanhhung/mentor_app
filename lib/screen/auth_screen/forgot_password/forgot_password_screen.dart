import 'package:flutter/material.dart';
import 'package:mentor_app/components/appbar_page_no_title.dart';
import 'package:mentor_app/components/full_width_button.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';
import 'package:mentor_app/screen/auth_screen/forgot_password/components/check_option.dart';
import 'package:mentor_app/screen/auth_screen/forgot_password/verification_screen.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);
  static String routeName = '/forgot_password';

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
                AppbarPageNoTitle(),
                const SizedBox(
                  height: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Forgot password',
                      style: PrimaryFont.bold700(30, textWhite),
                    ),
                    Text(
                      'Please select option to send link reset password',
                      style: PrimaryFont.regular400(14, textSilver).copyWith(
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    CheckOptionSendLink(
                        // title: 'Send to your email',
                        // subTitle:
                        //     'Link reset will be send to your email address registered',
                        ),
                    const SizedBox(
                      height: 20,
                    ),
                    CheckOptionSendLink(
                        // title: 'Send to your phone number',
                        // subTitle:
                        //     'Link reset will be send to your phone number registered',
                        ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                FullWidthButton(
                  text: 'Send link',
                  press: () {
                    Navigator.pushNamed(context, VerificationScreen.routeName);
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Didn’t receive link? ',
                      style: PrimaryFont.bold600(14, textWhite),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Resend Link',
                        style: PrimaryFont.bold600(14, textBlue1),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
