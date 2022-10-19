import 'package:flutter/material.dart';
import 'package:mentor_app/components/full_width_button.dart';

import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/email_validator.dart';
import 'package:mentor_app/constants/font.dart';
import 'package:mentor_app/screen/auth_screen/sign_in/sign_in_screen.dart';
import 'package:mentor_app/screen/auth_screen/sign_in/sign_in_with_email.dart';
import 'package:mentor_app/screen/auth_screen/sign_up/components.dart/check_password_characters.dart';
import 'package:mentor_app/screen/auth_screen/sign_up/components.dart/success_screen.dart';

class FormSignUp extends StatefulWidget {
  const FormSignUp({super.key});

  @override
  State<FormSignUp> createState() => _FormSignUpState();
}

class _FormSignUpState extends State<FormSignUp> {
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool _obscureText = true;
  bool _obscureTextConfirm = true;

  late String _email;
  late String _password;
  late String _confirmpassword;

  bool _isPasswordEightCharacters = false;
  bool _hasPasswordOneNumber = false;
  bool _hasSpecialCharacters = false;
  bool _hasPasswordOneLowerCase = false;
  bool _hasPasswordOneUpperCase = false;
  bool _noPasswordSpaces = true;

  final numbericRegex = RegExp(r'[0-9]');
  final isLowerCaseRegex = RegExp(r'[a-z]');
  final isUpperCaseRegex = RegExp(r'[A-Z]');
  final hasSpecialCharactersRegex = RegExp(r'[!@#$%^&*(),.?":{}|<>]');
  final noSpacesRegex = RegExp(r' ');

  onPasswordChanged(String password) {
    setState(() {
      // check length PW
      _isPasswordEightCharacters = false;
      if (password.length >= 8) _isPasswordEightCharacters = true;

      // // check character number PW
      _hasPasswordOneNumber = false;
      if (numbericRegex.hasMatch(password)) _hasPasswordOneNumber = true;

      _hasPasswordOneLowerCase = false;
      if (isLowerCaseRegex.hasMatch(password)) _hasPasswordOneLowerCase = true;

      _hasPasswordOneUpperCase = false;
      if (isUpperCaseRegex.hasMatch(password)) _hasPasswordOneUpperCase = true;

      _hasSpecialCharacters = false;
      if (hasSpecialCharactersRegex.hasMatch(password))
        _hasSpecialCharacters = true;

      _noPasswordSpaces = true;
      if (noSpacesRegex.hasMatch(password)) _noPasswordSpaces = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return kEmailNullError;
              }
              if (!emailValidatorRegExp.hasMatch(value)) {
                return kInvalidEmailError;
              }
              return null;
            },
            onSaved: (newValue) {
              _email = newValue!;
            },
            keyboardType: TextInputType.emailAddress,
            style: PrimaryFont.regular400(14, textWhite),
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'Nhập email của bạn',
              prefixIcon: Image(
                image: AssetImage('/icons/auth/email.png'),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          TextFormField(
            controller: password,
            validator: (value) {
              if (value!.length >= 8) {
                return "";
              }
              if (!RegExp(
                      r'^(?=.?[A-Z])(?=.?[a-z])(?=.?[0-9])(?=.?[!@#$&*~]).{8,}$')
                  .hasMatch(value)) {
                return "";
              }
              return null;
            },
            onChanged: (password) => onPasswordChanged(password),
            onSaved: (newValue) {
              _password = newValue!;
            },
            keyboardType: TextInputType.visiblePassword,
            obscureText: _obscureText,
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
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 25,
            ),
            child: CheckPasswordCharacters(
              isPasswordEightCharacters: _isPasswordEightCharacters,
              hasPasswordOneNumber: _hasPasswordOneNumber,
              hasSpecialCharacters: _hasSpecialCharacters,
              hasPasswordOneLowerCase: _hasPasswordOneLowerCase,
              hasPasswordOneUpperCase: _hasPasswordOneUpperCase,
              noPasswordSpaces: _noPasswordSpaces,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          TextFormField(
            controller: confirmpassword,
            onSaved: (newValue) {
              _confirmpassword = newValue!;
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'Vui lòng nhập lại mật khẩu !';
              } else if (password.text != confirmpassword.text) {
                return 'Mật khẩu không đúng !';
              }
              return null;
            },
            keyboardType: TextInputType.visiblePassword,
            obscureText: _obscureTextConfirm,
            // obscuringCharacter: '*',
            style: PrimaryFont.regular400(14, textWhite),
            decoration: InputDecoration(
              labelText: 'Xác nhận mật khẩu',
              hintText: 'Xác nhận mật khẩu của bạn',
              prefixIcon: Image(
                image: AssetImage(
                  '/icons/auth/lock.png',
                ),
              ),
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    _obscureTextConfirm = !_obscureTextConfirm;
                  });
                },
                child: Image(
                  image: AssetImage(
                    _obscureTextConfirm
                        ? '/icons/auth/hide-on.png'
                        : '/icons/auth/hide-off.png',
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Khi tạo tài khoản là bạn đã đồng ý với các ',
                  style: PrimaryFont.regular400(12, textGrey1),
                ),
                TextSpan(
                  text: 'Điều khoản và Điều kiện của chúng tôi',
                  style: PrimaryFont.regular400(12, textBlue1),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          FullWidthButton(
            text: 'Đăng ký',
            press: () {
              if (_formKey.currentState!.validate()) {
                Navigator.pushNamed(context, SuccessScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }
}
