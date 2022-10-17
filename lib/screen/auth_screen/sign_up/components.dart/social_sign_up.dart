import 'package:flutter/material.dart';
import 'package:mentor_app/components/social_content.dart';

class SocialSignUp extends StatelessWidget {
  const SocialSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialContent(
          icon: '/icons/auth/apple.png',
          text: 'Sign up with Apple',
          press: () {},
        ),
        const SizedBox(
          height: 15,
        ),
        SocialContent(
          icon: '/icons/auth/google.png',
          text: 'Sign up with Google',
          press: () {},
        ),
        const SizedBox(
          height: 15,
        ),
        SocialContent(
          icon: '/icons/auth/facebook.png',
          text: 'Sign up with Facebook',
          press: () {},
        ),
      ],
    );
  }
}
