import 'package:flutter/material.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';

class CheckErrorsAuth extends StatelessWidget {
  const CheckErrorsAuth({
    Key? key,
    required this.has8Char,
    required this.hasDigits,
    required this.hasSpecialChar,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.noSpaces,
  }) : super(key: key);

  final bool has8Char;
  final bool hasDigits;
  final bool hasSpecialChar;
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool noSpaces;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CheckErrorContent(
          textError: 'Có ít nhất 8 ký tự',
          errorCheck: has8Char,
        ),
        CheckErrorContent(
          textError: 'Có ít nhất 1 ký tự số',
          errorCheck: hasDigits,
        ),
        CheckErrorContent(
          textError: 'Có ít nhất 1 ký tự viết hoa',
          errorCheck: hasUpperCase,
        ),
        CheckErrorContent(
          textError: 'Có ít nhất 1 ký tự thường',
          errorCheck: hasLowerCase,
        ),
        CheckErrorContent(
          textError: 'Có ít nhất 1 ký tự đặc biệt',
          errorCheck: hasSpecialChar,
        ),
        CheckErrorContent(
          textError: 'Không được có khoảng trắng',
          errorCheck: noSpaces,
        ),
      ],
    );
  }
}

class CheckErrorContent extends StatelessWidget {
  const CheckErrorContent({
    Key? key,
    required this.errorCheck,
    required this.textError,
  }) : super(key: key);

  final String textError;
  final bool errorCheck;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AnimatedContainer(
          duration: Duration(milliseconds: 500),
          child: Center(
            child: Icon(
              errorCheck ? Icons.check : Icons.error_outline,
              color: errorCheck ? backgroundYellow : textRed,
              size: 15,
            ),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          textError,
          style: PrimaryFont.regular400(12, errorCheck ? textSilver : textGrey1)
              .copyWith(
            height: 1.5,
          ),
        ),
      ],
    );
  }
}
