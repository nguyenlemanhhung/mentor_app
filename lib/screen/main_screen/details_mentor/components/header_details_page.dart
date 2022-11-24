import 'package:flutter/material.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';
import 'package:mentor_app/models/mentor_data.dart';

class HeaderDetailsPage extends StatelessWidget {
  const HeaderDetailsPage({
    Key? key,
    required this.mentorContent,
  }) : super(key: key);

  final MentorContent mentorContent;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
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
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(mentorContent.image),
                        fit: BoxFit.cover),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                mentorContent.name,
                style: PrimaryFont.bold700(24, textWhite),
              ),
              const SizedBox(
                height: 10,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: mentorContent.position,
                      style: PrimaryFont.regular400(13, textSilver),
                    ),
                    TextSpan(
                      text: ' tại ',
                      style: PrimaryFont.regular400(13, textGrey1),
                    ),
                    TextSpan(
                      text: mentorContent.company,
                      style: PrimaryFont.regular400(13, textSilver),
                    ),
                  ],
                ),
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
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Text(
                                      '22',
                                      style:
                                          PrimaryFont.medium500(12, textWhite),
                                    ),
                                    Text(
                                      'Mentee',
                                      style:
                                          PrimaryFont.regular400(10, textGrey1),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Text(
                                      '30',
                                      style:
                                          PrimaryFont.medium500(12, textWhite),
                                    ),
                                    Text(
                                      'Giờ cố vấn',
                                      style:
                                          PrimaryFont.regular400(10, textGrey1),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Text(
                                      '5.0',
                                      style:
                                          PrimaryFont.medium500(12, textWhite),
                                    ),
                                    Text(
                                      'Đánh giá',
                                      style:
                                          PrimaryFont.regular400(10, textGrey1),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Text(
                                      '200',
                                      style:
                                          PrimaryFont.medium500(12, textWhite),
                                    ),
                                    Text(
                                      'Lượt theo dõi',
                                      style:
                                          PrimaryFont.regular400(10, textGrey1),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
