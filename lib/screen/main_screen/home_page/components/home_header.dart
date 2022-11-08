import 'package:flutter/material.dart';
import 'package:mentor_app/screen/main_screen/chat_screen/chat_screen.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/font.dart';
import '../../all_mentor/all_mentor.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('/images/border_avt.png'),
                        fit: BoxFit.cover),
                    shape: BoxShape.circle,
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(6),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('/images/avt.png'),
                            fit: BoxFit.cover),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Xin chào,',
                      style: PrimaryFont.bold600(14, textWhite).copyWith(
                        height: 1.5,
                      ),
                    ),
                    Text(
                      'Nirmala Azalea',
                      style: PrimaryFont.bold600(14, textBlue1).copyWith(
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, AllMentorPage.routeName);
                  },
                  child: Image.asset('/icons/search.png'),
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, ChatScreen.routeName);
                  },
                  child: Image.asset(
                    '/icons/chat.png',
                    width: 25,
                    color: textGrey1,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
