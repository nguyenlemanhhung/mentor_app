import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';

class FormSignIn extends StatefulWidget {
  const FormSignIn({super.key});

  @override
  State<FormSignIn> createState() => _FormSignInState();
}

class _FormSignInState extends State<FormSignIn> {
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
          )
        ],
      ),
    );
  }
}
