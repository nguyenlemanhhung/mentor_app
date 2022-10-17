import 'package:flutter/material.dart';
import 'package:mentor_app/components/social_content.dart';

class SocialSignIn extends StatelessWidget {
  const SocialSignIn({super.key});

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
