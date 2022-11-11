import 'package:flutter/material.dart';

class AuthPageHeader extends StatelessWidget {
  const AuthPageHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          Theme.of(context).brightness == Brightness.dark
              ? '/images/logo_dark.png'
              : '/images/logo_light.png',
        ),
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
                style: Theme.of(context).textTheme.subtitle1,
              ),
              TextSpan(
                text: 'Điều khoản ',
                style: Theme.of(context).textTheme.subtitle2,
              ),
              TextSpan(
                text: 'và ',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              TextSpan(
                text: 'Chính sách quyền riêng tư',
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
