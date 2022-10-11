import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';

class FormEditProfile extends StatefulWidget {
  const FormEditProfile({super.key});

  @override
  State<FormEditProfile> createState() => _FormEditProfileState();
}

class _FormEditProfileState extends State<FormEditProfile> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.name,
            style: PrimaryFont.regular400(14, textWhite),
            decoration: InputDecoration(
              labelText: 'First Name',
              // hintText: 'Nhập email của bạn',
              // prefixIcon: Image(
              //   image: AssetImage('/icons/auth/email.png'),
              // ),
              // suffixIcon: Icon(Icons.check_box_outlined),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          TextFormField(
            keyboardType: TextInputType.name,
            style: PrimaryFont.regular400(14, textWhite),
            decoration: InputDecoration(
              labelText: 'Last Name',
              // hintText: 'Nhập email của bạn',
              // prefixIcon: Image(
              //   image: AssetImage('/icons/auth/email.png'),
              // ),
              // suffixIcon: Icon(Icons.check_box_outlined),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            style: PrimaryFont.regular400(14, textWhite),
            decoration: InputDecoration(
              labelText: 'Email',
              // hintText: 'Nhập mật khẩu của bạn',
              // prefixIcon: Image(
              //   height: 1,
              //   width: 1,
              //   image: AssetImage(
              //     '/icons/auth/lock.png',
              //   ),
              // ),
              // suffixIcon: Image(
              //   image: AssetImage('/icons/auth/password_off.png'),
              // ),
            ),
          )
        ],
      ),
    );
  }
}