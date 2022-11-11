import 'package:flutter/material.dart';
import 'package:mentor_app/components/full_width_button.dart';

import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/errors_validator.dart';
import 'package:mentor_app/constants/font.dart';
import 'package:mentor_app/screen/auth_screen/sign_up/components/check_errors_auth.dart';
import 'package:mentor_app/screen/auth_screen/sign_up/components/signup_success_screen.dart';

class FormSignUp extends StatefulWidget {
  const FormSignUp({super.key});

  @override
  State<FormSignUp> createState() => _FormSignUpState();
}

class _FormSignUpState extends State<FormSignUp> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool _obscureText = true;
  bool _obscureTextConfirm = true;

  late String _email;
  late String _password;
  late String _confirmpassword;

  bool has8Char = false;
  bool hasDigits = false;
  bool hasSpecialChar = false;
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool noSpaces = true;

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
            onChanged: (value) {
              final form = _formKey.currentState!;
              form.validate();
            },
            onSaved: (newValue) {
              _email = newValue!;
            },
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            style: Theme.of(context).textTheme.caption,
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
            controller: passwordController,
            validator: (value) {
              // if (!(value === null) && value!.isNotEmpty &&
              //     value.length >= 8 &&
              //     value.contains(hasDigitsReg) &&
              //     value.contains(hasUpperCaseReg) &&
              //     value.contains(hasLowerCaseReg) &&
              //     value.contains(hasSpecialCharReg) &&
              //     value.contains(noSpacesReg)) {
              //   return 'dung';
              // }
              if (value!.length >= 8) {
                return "pass phai co 8 chu";
              } else if (!RegExp(
                      r'^(?=.?[A-Z])(?=.?[a-z])(?=.?[0-9])(?=.?[!@#$&*~]).{8,}$')
                  .hasMatch(value)) {
                return "pass phair du dk)";
              }

              return null;
            },
            onChanged: (value) {
              if (value.characters.length >= 8) {
                setState(() {
                  has8Char = true;
                });
              } else {
                setState(() {
                  has8Char = false;
                });
              }

              if (value.contains(hasUpperCaseReg)) {
                setState(() {
                  hasUpperCase = true;
                });
              } else {
                setState(() {
                  hasUpperCase = false;
                });
              }

              if (value.contains(hasLowerCaseReg)) {
                setState(() {
                  hasLowerCase = true;
                });
              } else {
                setState(() {
                  hasLowerCase = false;
                });
              }

              if (value.contains(hasDigitsReg)) {
                setState(() {
                  hasDigits = true;
                });
              } else {
                setState(() {
                  hasDigits = false;
                });
              }

              if (value.contains(hasSpecialCharReg)) {
                setState(() {
                  hasSpecialChar = true;
                });
              } else {
                setState(() {
                  hasSpecialChar = false;
                });
              }

              if (value.contains(noSpacesReg)) {
                setState(() {
                  noSpaces = false;
                });
              } else {
                setState(() {
                  noSpaces = true;
                });
              }
            },
            onSaved: (newValue) {
              _password = newValue!;
            },
            keyboardType: TextInputType.visiblePassword,
            obscureText: _obscureText,
            style: Theme.of(context).textTheme.caption,
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
            height: 30,
          ),
          TextFormField(
            controller: confirmpasswordController,
            onSaved: (newValue) {
              _confirmpassword = newValue!;
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'Vui lòng nhập lại mật khẩu !';
              } else if (passwordController.text !=
                  confirmpasswordController.text) {
                return 'Mật khẩu không đúng !';
              }
              return null;
            },
            keyboardType: TextInputType.visiblePassword,
            obscureText: _obscureTextConfirm,
            // obscuringCharacter: '*',
            style: Theme.of(context).textTheme.caption,
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
            height: 10,
          ),
          CheckErrorsAuth(
            has8Char: has8Char,
            hasDigits: hasDigits,
            hasUpperCase: hasUpperCase,
            hasLowerCase: hasLowerCase,
            hasSpecialChar: hasSpecialChar,
            noSpaces: noSpaces,
          ),
          const SizedBox(
            height: 40,
          ),
          FullWidthButton(
            text: 'Đăng ký',
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                Navigator.pushNamed(context, SignUpSuccessScreen.routeName);
              }
            },
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
                  text: 'Điều khoản',
                  style: PrimaryFont.regular400(12, textBlue1),
                ),
                TextSpan(
                  text: ' và ',
                  style: PrimaryFont.regular400(12, textGrey1),
                ),
                TextSpan(
                  text: 'Điều kiện',
                  style: PrimaryFont.regular400(12, textBlue1),
                ),
                TextSpan(
                  text: ' của chúng tôi',
                  style: PrimaryFont.regular400(12, textGrey1),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
