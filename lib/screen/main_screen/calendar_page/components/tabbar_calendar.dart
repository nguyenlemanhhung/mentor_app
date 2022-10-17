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
              // indicatorPadding: EdgeInsets.only(top: 5),
              // labelColor: mainOrange,
              labelStyle: PrimaryFont.regular400(14, textSilver),
              unselectedLabelColor: textGrey1,
              // unselectedLabelColor: textBlack6,
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
            child: TabBarView(
              children: [
                Center(
                  child: Text('tab1'),
                ),
                Center(
                  child: Text('tab2'),
                ),
                Center(
                  child: Text('tab3'),
                ),
                Center(
                  child: Text('tab4'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
