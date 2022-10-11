import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 112,
          height: 112,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(
                  'https://cdn.pixabay.com/photo/2016/12/19/21/36/woman-1919143_960_720.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          children: [
            Text(
              'Nirmala Azalea',
              style: PrimaryFont.bold700(18, textWhite),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'nirmala@gmail.com',
              style: PrimaryFont.regular400(12, textGrey1),
            ),
            const SizedBox(
              height: 10,
            ),
            IntrinsicHeight(
              child: Row(
                children: [
                  VerticalDivider(
                    color: textBlue2,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '4',
                        style: PrimaryFont.bold700(30, textWhite),
                      ),
                      Text(
                        'Course Joined',
                        style: PrimaryFont.regular400(12, textWhite),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
