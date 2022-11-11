import 'package:flutter/material.dart';
import 'package:mentor_app/constants/colors.dart';

class DividerWithText extends StatelessWidget {
  const DividerWithText({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: Theme.of(context).brightness == Brightness.dark
                ? secondaryBlue2
                : secondaryGrey2,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.caption,
        ),
        const SizedBox(
          width: 15,
        ),
        Expanded(
          child: Divider(
            color: Theme.of(context).brightness == Brightness.dark
                ? secondaryBlue2
                : secondaryGrey2,
          ),
        ),
      ],
    );
  }
}
