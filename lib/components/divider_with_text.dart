import 'package:flutter/material.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';

class DividerWithText extends StatelessWidget {
  const DividerWithText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: secondaryBlue2,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Text(
          'Or',
          style: PrimaryFont.regular400(14, textWhite),
        ),
        const SizedBox(
          width: 15,
        ),
        Expanded(
          child: Divider(
            color: secondaryBlue2,
          ),
        ),
      ],
    );
  }
}
