import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';

class TabBarCalendar extends StatefulWidget {
  const TabBarCalendar({super.key});

  @override
  State<TabBarCalendar> createState() => _TabBarCalendarState();
}

class _TabBarCalendarState extends State<TabBarCalendar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: TabBar(
              isScrollable: true,
              labelPadding: EdgeInsets.all(10),
              labelStyle: PrimaryFont.regular400(14, textSilver),
              unselectedLabelColor: textGrey1,
              indicatorColor: textBlue1,
              tabs: [
                Text('Chờ xác nhận'),
                Text('Sắp tới'),
                Text('Chờ đánh giá'),
                Text('Đã đánh giá'),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TabBarView(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Image.asset('/images/sleep.png'),
                          Image.asset('/images/sleep.png'),
                          Image.asset('/images/sleep.png'),
                          Image.asset('/images/sleep.png')
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Image.asset('/images/sleep.png'),
                          Image.asset('/images/sleep.png'),
                          Image.asset('/images/sleep.png'),
                          Image.asset('/images/sleep.png')
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Image.asset('/images/sleep.png'),
                          Image.asset('/images/sleep.png'),
                          Image.asset('/images/sleep.png'),
                          Image.asset('/images/sleep.png')
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Image.asset('/images/sleep.png'),
                          Image.asset('/images/sleep.png'),
                          Image.asset('/images/sleep.png'),
                          Image.asset('/images/sleep.png')
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
