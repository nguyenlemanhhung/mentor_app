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
  bool _obscureText = true;
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
              // suffixIcon: Image(
              //   image: AssetImage('/icons/auth/Checklist-on.png'),
              // ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: _obscureText,
            // obscuringCharacter: '*',
            style: PrimaryFont.regular400(14, textWhite),
            decoration: InputDecoration(
              labelText: 'Mật khẩu',
              hintText: 'Nhập mật khẩu của bạn',
              prefixIcon: Image(
                image: AssetImage(
                  '/icons/auth/lock.png',
                ),
              ),
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                child: Image(
                  image: AssetImage(
                    _obscureText
                        ? '/icons/auth/hide-on.png'
                        : '/icons/auth/hide-off.png',
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
