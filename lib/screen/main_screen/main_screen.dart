import 'package:flutter/material.dart';

import 'package:mentor_app/constants/colors.dart';

import 'package:mentor_app/screen/main_screen/calendar_page/calendar_page.dart';
import 'package:mentor_app/screen/main_screen/chat_screen/chat_screen.dart';
import 'package:mentor_app/screen/main_screen/home_page/home_page.dart';
import 'package:mentor_app/screen/main_screen/news_page/news_page.dart';
import 'package:mentor_app/screen/main_screen/noti_page/noti_page.dart';
import 'package:mentor_app/screen/main_screen/profile_page/profile_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  static String routeName = '/home';

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 2;

  final pages = const [
    CalendarPage(),
    NewsPage(),
    HomePage(),
    NotiPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, ChatScreen.routeName);
        },
        child: Icon(Icons.message_outlined),
      ),
      body: SafeArea(
        child: pages[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: IconThemeData(
          color: textBlue1,
        ),
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: Theme.of(context).textTheme.subtitle1,
        unselectedLabelStyle: Theme.of(context).textTheme.subtitle1,
        currentIndex: _currentIndex,
        onTap: (newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Lịch hẹn',
            icon: Icon(
              Icons.calendar_month_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Bảng tin',
            icon: Icon(Icons.newspaper_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Cố vấn',
            icon: Icon(Icons.message_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Thông báo',
            icon: Icon(Icons.notifications_none_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Cá nhân',
            icon: Icon(
              Icons.person_outline,
              color: textGrey1,
            ),
            activeIcon: Icon(
              Icons.person_outline,
              color: textBlue1,
            ),
          ),
        ],
      ),
    );
  }
}
