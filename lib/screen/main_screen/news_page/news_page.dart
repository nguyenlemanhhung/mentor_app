import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:mentor_app/components/mentor_card.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';

import 'package:mentor_app/model/mentor_data.dart';
import 'package:mentor_app/model/test.dart';
import 'package:mentor_app/screen/main_screen/news_page/components/tabbar_news.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Text(
            'Trang cộng đồng',
            style: PrimaryFont.bold700(30, textWhite),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: TabBarNews(),
        ),
      ],
    );
  }
}
