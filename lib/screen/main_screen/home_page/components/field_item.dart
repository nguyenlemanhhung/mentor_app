import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';

class FieldItem extends StatelessWidget {
  const FieldItem({
    Key? key,
    required this.title,
    required this.image,
    required this.press,
  }) : super(key: key);
  final String title, image;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: backgroundInput,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextButton.icon(
        onPressed: press,
        icon: Image(
          image: AssetImage(image),
          width: 40,
          height: 40,
        ),
        label: Text(title),
      ),
    );
  }
}
