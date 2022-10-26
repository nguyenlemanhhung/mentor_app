import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:mentor_app/components/form_error.dart';
import 'package:mentor_app/components/full_width_button.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/errors_validator.dart';
import 'package:mentor_app/constants/font.dart';
import 'package:mentor_app/screen/auth_screen/forgot_password/forgot_password_screen.dart';
import 'package:mentor_app/screen/auth_screen/sign_in/signin_success_screen.dart';

class FormSignIn extends StatefulWidget {
  const FormSignIn({super.key});

  @override
  State<FormSignIn> createState() => _FormSignInState();
}

class _FormSignInState extends State<FormSignIn> {
  final _formKey = GlobalKey<FormState>();
  bool status = false;
  bool _obscureText = true;

  String? _email;
  String? _password;

  final List<String> errors = [];
  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error!);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          const SizedBox(
            height: 30,
          ),
          buildPasswordFormField(),
          const SizedBox(
            height: 40,
          ),
          buildCheckRemember(context),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
            ),
            child: FormError(errors: errors),
          ),
          const SizedBox(
            height: 20,
          ),
          FullWidthButton(
            text: 'Đăng nhập',
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                Navigator.pushNamed(context, SignInSuccessScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  Row buildCheckRemember(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            FlutterSwitch(
              activeColor: backgroundBlue,
              width: 40.0,
              height: 22.0,
              toggleSize: 20.0,
              value: status,
              borderRadius: 30.0,
              onToggle: (val) {
                setState(() {
                  status = val;
                });
              },
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              'Ghi nhớ đăng nhập',
              style: PrimaryFont.regular400(14, textWhite),
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, ForgotPasswordScreen.routeName);
          },
          child: Text(
            'Quên mật khẩu ?',
            style: PrimaryFont.medium500(14, textRed),
          ),
        ),
      ],
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      onSaved: (newValue) {
        _password = newValue;
      },
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
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
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      onSaved: (newValue) {
        _email = newValue;
      },
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
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
    );
  }
}
