import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mentor_app/components/line_separating_components.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';
import 'package:mentor_app/screen/main_screen/chat_screen/components/chat_item.dart';
import 'package:mentor_app/screen/main_screen/chat_screen/components/chat_screen_header.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});
  static String routeName = '/chat_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundMainScreen,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              ChatScreenHeader(),
              LineSeparatingComponents(),
              Expanded(
                child: ListView.builder(
                  itemCount: 16,
                  itemBuilder: (context, index) {
                    return ChatItem();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
