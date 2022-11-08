import 'package:flutter/material.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';

class ChatScreenHeader extends StatelessWidget {
  const ChatScreenHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Trò chuyện',
          style: PrimaryFont.bold700(30, textWhite),
        ),
        Icon(
          Icons.cancel_presentation_sharp,
          color: textGrey1,
        ),
      ],
    );
  }
}
