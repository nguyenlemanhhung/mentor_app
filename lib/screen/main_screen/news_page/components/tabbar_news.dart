import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';

class TabBarNews extends StatefulWidget {
  const TabBarNews({super.key});

  @override
  State<TabBarNews> createState() => _TabBarNewsState();
}

class _TabBarNewsState extends State<TabBarNews> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
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
                Text('Tin tức'),
                Text('Mentori Blog'),
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
