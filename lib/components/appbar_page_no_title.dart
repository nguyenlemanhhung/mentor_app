import 'package:flutter/material.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';

class AppbarPageNoTitle extends StatelessWidget {
  const AppbarPageNoTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        alignment: Alignment.centerLeft,
        child: Image.asset('/icons/back_arrow.png'),
      ),
    );
  }
}
