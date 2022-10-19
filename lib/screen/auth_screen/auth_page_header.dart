import 'package:flutter/material.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';

class AuthPageHeader extends StatelessWidget {
  const AuthPageHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('/images/logo.png'),
        const SizedBox(
          height: 40,
        ),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: TextStyle(
              height: 1.5,
            ),
            children: [
              TextSpan(
                text:
                    'Khi sử dụng dịch vụ của chúng tôi,là bạn đã đồng ý với\n',
                style: PrimaryFont.regular400(12, textSilver),
              ),
              TextSpan(
                text: 'Điều khoản ',
                style: PrimaryFont.regular400(12, textBlue1),
              ),
              TextSpan(
                text: 'và ',
                style: PrimaryFont.regular400(12, textSilver),
              ),
              TextSpan(
                text: 'Chính sách quyền riêng tư',
                style: PrimaryFont.regular400(12, textBlue1),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
