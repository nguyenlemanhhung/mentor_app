import 'package:flutter/material.dart';

import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';

class FormSignUp extends StatefulWidget {
  const FormSignUp({super.key});

  @override
  State<FormSignUp> createState() => _FormSignUpState();
}

class _FormSignUpState extends State<FormSignUp> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            style: PrimaryFont.regular400(14, textWhite),
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'Nhập email của bạn',
              prefixIcon: Image(
                image: AssetImage('/icons/auth/email.png'),
              ),
              suffixIcon: Icon(Icons.check_box_outlined),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            obscuringCharacter: '*',
            style: PrimaryFont.regular400(14, textWhite),
            decoration: InputDecoration(
              labelText: 'Mật khẩu',
              hintText: 'Nhập mật khẩu của bạn',
              prefixIcon: Image(
                height: 1,
                width: 1,
                image: AssetImage(
                  '/icons/auth/lock.png',
                ),
              ),
              suffixIcon: Image(
                image: AssetImage('/icons/auth/password_off.png'),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            obscuringCharacter: '*',
            style: PrimaryFont.regular400(14, textWhite),
            decoration: InputDecoration(
              labelText: 'Xác nhận mật khẩu',
              hintText: 'Xác nhận mật khẩu của bạn',
              prefixIcon: Image(
                height: 1,
                width: 1,
                image: AssetImage(
                  '/icons/auth/lock.png',
                ),
              ),
              suffixIcon: Image(
                image: AssetImage('/icons/auth/password_off.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
