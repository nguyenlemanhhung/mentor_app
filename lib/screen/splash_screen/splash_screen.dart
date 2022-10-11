import 'package:flutter/material.dart';
import 'package:mentor_app/components/short_button.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/model/splash_data.dart';
import 'package:mentor_app/screen/auth_screen/sign_in/sign_in_screen.dart';

import 'components/splash_content.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static String routeName = '/splash';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  AnimatedContainer dotIndicator(index) {
    return AnimatedContainer(
      margin: EdgeInsets.only(right: 7),
      duration: Duration(milliseconds: 400),
      height: 8,
      width: currentPage == index ? 20 : 8,
      decoration: BoxDecoration(
        color: currentPage == index ? backgroundBlue : secondaryBlue1,
        shape: BoxShape.circle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('/images/splash/bg-splash-2.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Spacer(
                flex: 1,
              ),
              Flexible(
                flex: 7,
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                    title: splashData[index].title,
                    subTitle: splashData[index].subTitle,
                    image: splashData[index].image,
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: List.generate(
                          splashData.length,
                          (index) => dotIndicator(index),
                        ),
                      ),
                      ShortButton(
                        text: currentPage == splashData.length - 1
                            ? 'Get Start'
                            : 'Next',
                        press: () {
                          currentPage == splashData.length - 1
                              ? Navigator.pushNamed(
                                  context, SignInScreen.routeName)
                              : _pageController.nextPage(
                                  duration: Duration(
                                    microseconds: 400,
                                  ),
                                  curve: Curves.easeInOut,
                                );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
