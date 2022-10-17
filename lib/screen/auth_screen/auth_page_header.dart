import 'package:flutter/material.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';

class AuthPageHeader extends StatelessWidget {
  const AuthPageHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('/images/logo.png'),
        const SizedBox(
          height: 40,
        ),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: TextStyle(
              height: 1.5,
            ),
            children: [
              TextSpan(
                text: 'By using our services you are agreeing to our\n',
                style: PrimaryFont.regular400(12, textSilver),
              ),
              TextSpan(
                text: 'Terms ',
                style: PrimaryFont.regular400(12, textBlue1),
              ),
              TextSpan(
                text: 'and ',
                style: PrimaryFont.regular400(12, textSilver),
              ),
              TextSpan(
                text: 'Privacy Policy',
                style: PrimaryFont.regular400(12, textBlue1),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
