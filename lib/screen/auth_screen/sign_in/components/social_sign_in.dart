import 'package:flutter/material.dart';
import 'package:mentor_app/components/social_content.dart';

class SocialSignIn extends StatelessWidget {
  const SocialSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialContent(
          icon: Theme.of(context).brightness == Brightness.dark
              ? '/icons/auth/apple_dark.png'
              : '/icons/auth/apple_light.png',
          text: 'Đăng nhập bằng Apple',
          press: () {},
        ),
        const SizedBox(
          height: 15,
        ),
        SocialContent(
          icon: '/icons/auth/google.png',
          text: 'Đăng nhập bằng Google',
          press: () {},
        ),
        const SizedBox(
          height: 15,
        ),
        SocialContent(
          icon: '/icons/auth/facebook.png',
          text: 'Đăng nhập bằng Facebook',
          press: () {},
        ),
      ],
    );
  }
}
