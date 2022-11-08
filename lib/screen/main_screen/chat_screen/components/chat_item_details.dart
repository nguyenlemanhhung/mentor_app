import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';

class ChatItemDetails extends StatefulWidget {
  const ChatItemDetails({super.key});

  @override
  State<ChatItemDetails> createState() => _ChatItemDetailsState();
}

class _ChatItemDetailsState extends State<ChatItemDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundMainScreen,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Image.asset('/icons/back_arrow.png'),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset('/images/avt.png'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mr.haha',
                        style: PrimaryFont.regular400(14, textWhite),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Online',
                        style: PrimaryFont.regular400(
                          14,
                          textBlue1,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                child: Column(
                  children: [
                    Expanded(
                      child: Container(),
                    ),
                    Container(
                      child: Row(
                        children: [],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
