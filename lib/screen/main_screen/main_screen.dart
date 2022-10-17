import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/screen/main_screen/calendar_page/calendar_page.dart';
import 'package:mentor_app/screen/main_screen/home_page/home_page.dart';
import 'package:mentor_app/screen/main_screen/message_page/message_page.dart';
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

  final pages = [
    MessagePage(),
    CalendarPage(),
    HomePage(),
    NotiPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundMainScreen,
      body: SafeArea(
        child: pages[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amber,
        showUnselectedLabels: true,
        selectedFontSize: 15,
        unselectedFontSize: 15,
        selectedItemColor: textBlue1,
        unselectedItemColor: textGrey1,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            label: 'calendar',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.home_work_outlined),
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'noti',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'profile',
          ),
        ],
      ),
    );
  }
}
