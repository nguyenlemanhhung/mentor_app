import 'package:flutter/material.dart';
import 'package:mentor_app/components/line_separating_components.dart';
import 'package:mentor_app/screen/main_screen/home_page/components/field_component.dart';
import 'package:mentor_app/screen/main_screen/home_page/components/home_header.dart';
import 'package:mentor_app/screen/main_screen/home_page/components/slider_banner.dart';
import 'components/mentor_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeHeader(),
          SliderBanner(),
          const SizedBox(
            height: 35,
          ),
          FieldComponent(),
          LineSeparatingComponents(),
          MentorComponent(),
        ],
      ),
    );
  }
}
