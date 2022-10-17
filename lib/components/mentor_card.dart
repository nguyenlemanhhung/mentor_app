import 'package:flutter/material.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';

class MentorCard extends StatelessWidget {
  const MentorCard({
    Key? key,
    required this.name,
    required this.company,
    required this.image,
    required this.position,
  }) : super(key: key);
  final String name, company, image, position;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: backgroundInput,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: 5,
                  top: 5,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: secondaryBlue1,
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.person_add_alt_outlined,
                              size: 15,
                              color: backgroundBlue,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              '22',
                              style: PrimaryFont.regular400(10, textWhite),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: secondaryBlue1,
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.message_outlined,
                              size: 15,
                              color: backgroundYellow,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              '22',
                              style: PrimaryFont.regular400(10, textWhite),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Column(
              children: [
                Text(
                  name,
                  style: PrimaryFont.medium500(15, textWhite),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: position,
                        style: PrimaryFont.regular400(13, textSilver),
                      ),
                      TextSpan(
                        text: ' tại ',
                        style: PrimaryFont.regular400(13, textGrey1),
                      ),
                      TextSpan(
                        text: company,
                        style: PrimaryFont.regular400(13, textSilver),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: secondaryBlue1,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.calendar_month,
                                size: 15,
                                color: backgroundBlue,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Lịch rảnh',
                                style: PrimaryFont.regular400(12, textGrey1),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Column(
                            children: [
                              Text(
                                '06:00',
                                style: PrimaryFont.regular400(13, textWhite),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                '16/10/2022',
                                style: PrimaryFont.regular400(13, textWhite),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: textBlue1),
                        ),
                        child: Icon(
                          Icons.person_add_alt_outlined,
                          size: 20,
                          color: textBlue1,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
