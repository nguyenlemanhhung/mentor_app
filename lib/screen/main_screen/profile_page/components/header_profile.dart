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
          width: 110,
          height: 110,
          child: Stack(
            children: [
              Image.asset('/images/border_avt.png'),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(6),
                child: Image.asset('/images/avt.png'),
              ),
            ],
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
