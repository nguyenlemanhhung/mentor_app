import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mentor_app/components/appbar_page_no_title.dart';
import 'package:mentor_app/components/full_width_button.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';
import 'package:mentor_app/screen/auth_screen/forgot_password/forgot_password_screen.dart';
import 'package:mentor_app/screen/auth_screen/sign_in/components/form_sign_in.dart';
import 'package:mentor_app/screen/auth_screen/sign_in/components/switch_auth.dart';
import 'package:mentor_app/screen/auth_screen/sign_in/sign_in_screen.dart';
import 'package:mentor_app/screen/main_screen/main_screen.dart';

class SignInWithEmail extends StatelessWidget {
  const SignInWithEmail({super.key});
  static String routeName = '/sign_in_with_email';
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
                            style: PrimaryFont.bold700(30, textWhite),
                          ),
                          Text(
                            'Nhập tài khoản của bạn !',
                            style: PrimaryFont.regular400(14, textSilver)
                                .copyWith(height: 2),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      FormSignIn(),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SwitchAuth(),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, ForgotPasswordScreen.routeName);
                            },
                            child: Text('Quên mật khẩu ?',
                                style: PrimaryFont.medium500(14, textRed)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      FullWidthButton(
                        text: 'Đăng nhập',
                        press: () {
                          Navigator.pushNamed(context, MainScreen.routeName);
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
