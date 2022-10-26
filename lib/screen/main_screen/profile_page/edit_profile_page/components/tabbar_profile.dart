import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';
import 'package:mentor_app/screen/main_screen/profile_page/edit_profile_page/tabbar_certificate/tabbar_certificate.dart';
import 'package:mentor_app/screen/main_screen/profile_page/edit_profile_page/tabbar_evaluate/tabbar_evaluate.dart';
import 'package:mentor_app/screen/main_screen/profile_page/edit_profile_page/tabbar_info/tabbar_info.dart';

class TabBarProfile extends StatefulWidget {
  const TabBarProfile({super.key});

  @override
  State<TabBarProfile> createState() => _TabBarProfileState();
}

class _TabBarProfileState extends State<TabBarProfile> {
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
                Text('Thông tin cá nhân'),
                Text('Đánh giá'),
                Text('Hoạt động'),
                Text('Chứng chỉ'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                TabBarInfo(),
                TabBarEvaluate(),
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
                TabBarCertificate()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
