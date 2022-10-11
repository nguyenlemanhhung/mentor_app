import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';

class SocialAuth extends StatelessWidget {
  const SocialAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialContent(
          icon: '/icons/auth/apple.png',
          text: 'Sign in with Apple',
          press: () {},
        ),
        const SizedBox(
          height: 15,
        ),
        SocialContent(
          icon: '/icons/auth/google.png',
          text: 'Sign in with Google',
          press: () {},
        ),
        const SizedBox(
          height: 15,
        ),
        SocialContent(
          icon: '/icons/auth/facebook.png',
          text: 'Sign in with Facebook',
          press: () {},
        ),
      ],
    );
  }
}

class SocialContent extends StatelessWidget {
  const SocialContent({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String icon, text;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: textGrey1,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(icon),
            const SizedBox(
              width: 20,
            ),
            Text(
              text,
              style: PrimaryFont.bold600(14, textWhite),
            ),
          ],
        ),
      ),
    );
  }
}
