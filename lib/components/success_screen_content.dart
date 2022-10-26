import 'package:flutter/material.dart';
import 'package:mentor_app/components/appbar_page_no_title.dart';
import 'package:mentor_app/components/full_width_button.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';
import 'package:mentor_app/screen/auth_screen/sign_in/sign_in_with_email.dart';
import 'package:mentor_app/screen/auth_screen/sign_up/sign_up_with_email.dart';

class SuccessScreenContent extends StatelessWidget {
  const SuccessScreenContent({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.press,
    required this.textButton,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final String textButton;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('/images/Success-Screen.png'), fit: BoxFit.cover),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppbarPageNoTitle(press: () {
                Navigator.pushNamed(context, SignUpWithEmail.routeName);
              }),
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
                title,
                style: PrimaryFont.bold700(24, textWhite).copyWith(
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                subTitle,
                style: PrimaryFont.medium500(18, textSilver),
              ),
              Spacer(
                flex: 1,
              ),
              FullWidthButton(
                text: textButton,
                press: press,
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
