import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mentor_app/components/appbar_page_no_title.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';
import 'package:mentor_app/screen/auth_screen/sign_in/components/form_sign_in.dart';
import 'package:mentor_app/screen/auth_screen/sign_in/sign_in_screen.dart';

class SignInWithEmail extends StatelessWidget {
  const SignInWithEmail({super.key});
  static String routeName = '/sign_in_with_email';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Theme.of(context).brightness == Brightness.dark
                ? '/images/background/bgAuthDark.png'
                : '/images/background/bgAuthLight.png'),
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
                  child: AppbarPageNoTitle(
                    press: () {
                      Navigator.pushNamed(context, SignInScreen.routeName);
                    },
                  ),
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
                            'Đăng nhập bằng Email',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Nhập tài khoản của bạn !',
                            style: Theme.of(context).textTheme.caption,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      FormSignIn(),
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
