import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';
import 'package:mentor_app/models/slider_banner_home.dart';
import 'package:mentor_app/screen/main_screen/home_page/components/slider_content.dart';

class SliderBanner extends StatefulWidget {
  const SliderBanner({super.key});

  @override
  State<SliderBanner> createState() => _SliderBannerState();
}

class _SliderBannerState extends State<SliderBanner> {
  int currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            height: 305,
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              itemCount: sliderBannerData.length,
              itemBuilder: (context, index) {
                return Container(
                  child: SliderContent(
                    title: sliderBannerData[index].title,
                    image: sliderBannerData[index].image,
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: sliderBannerData.length,
                itemBuilder: (context, index) {
                  return AnimatedContainer(
                    duration: Duration(milliseconds: 400),
                    margin: EdgeInsets.symmetric(horizontal: 2),
                    color: currentPage == index ? bgBlue : secondaryBlue3,
                    height: 2,
                    width: (size.width - 40) / sliderBannerData.length,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
