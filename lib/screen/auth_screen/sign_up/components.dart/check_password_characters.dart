import 'package:flutter/material.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';

class CheckPasswordCharacters extends StatelessWidget {
  const CheckPasswordCharacters(
      {Key? key,
      required bool isPasswordEightCharacters,
      required bool hasPasswordOneNumber,
      required bool hasSpecialCharacters,
      required bool hasPasswordOneLowerCase,
      required bool hasPasswordOneUpperCase,
      required bool noPasswordSpaces})
      : _isPasswordEightCharacters = isPasswordEightCharacters,
        _hasPasswordOneNumber = hasPasswordOneNumber,
        _hasSpecialCharacters = hasSpecialCharacters,
        _hasPasswordOneLowerCase = hasPasswordOneLowerCase,
        _hasPasswordOneUpperCase = hasPasswordOneUpperCase,
        _noPasswordSpaces = noPasswordSpaces,
        super(key: key);

  final bool _isPasswordEightCharacters;
  final bool _hasPasswordOneNumber;
  final bool _hasSpecialCharacters;
  final bool _hasPasswordOneLowerCase;
  final bool _hasPasswordOneUpperCase;
  final bool _noPasswordSpaces;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CheckPasswordContent(
          text: 'Có ít nhất 8 ký tự',
          contentCheck: _isPasswordEightCharacters,
        ),
        CheckPasswordContent(
          text: 'Có ít nhất 1 ký tự số',
          contentCheck: _hasPasswordOneNumber,
        ),
        CheckPasswordContent(
          text: 'Có ít nhất 1 ký tự đặc biệt',
          contentCheck: _hasSpecialCharacters,
        ),
        CheckPasswordContent(
          text: 'Có ít nhất 1 ký tự viết hoa',
          contentCheck: _hasPasswordOneUpperCase,
        ),
        CheckPasswordContent(
          text: 'Có ít nhất 1 ký tự thường',
          contentCheck: _hasPasswordOneLowerCase,
        ),
        CheckPasswordContent(
          text: 'Không được có khoảng trắng',
          contentCheck: _noPasswordSpaces,
        ),
      ],
    );
  }
}

class CheckPasswordContent extends StatelessWidget {
  const CheckPasswordContent({
    Key? key,
    required this.text,
    required this.contentCheck,
  }) : super(key: key);
  final String text;
  final bool contentCheck;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AnimatedContainer(
          duration: Duration(milliseconds: 500),
          child: Center(
            child: Icon(
              contentCheck ? Icons.check : Icons.highlight_remove_outlined,
              color: contentCheck ? backgroundYellow : textRed,
              size: 15,
            ),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          text,
          style:
              PrimaryFont.regular400(12, contentCheck ? textSilver : textGrey1)
                  .copyWith(
            height: 1.5,
          ),
        ),
      ],
    );
  }
}
