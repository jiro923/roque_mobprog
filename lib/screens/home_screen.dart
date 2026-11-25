import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:surname_mobprog/constants.dart';
import 'package:surname_mobprog/screens/newsfeed_screen.dart';
import 'package:surname_mobprog/screens/notification_screen.dart';
import 'package:surname_mobprog/widgets/custom_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  backgroundColor: Colors.white,
  surfaceTintColor: Colors.transparent,
  elevation: 2,
  title: CustomText(
    text: _selectedIndex == 0 ? 'facebook' : 'Notifications',
    fontSize: 25.sp,
    color: _selectedIndex == 0 ? fbPrimary : Colors.black,
    fontFamily: _selectedIndex == 0 ? 'Klavika' : 'Roboto',
    fontWeight: FontWeight.bold,
  ),
),
      body: PageView(
        controller: _pageController,
        children: const <Widget>[NewsfeedScreen(), NotificationScreen()],
        onPageChanged: (page) {
          setState(() {
            _selectedIndex = page;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        onTap: _onTappedBar,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/home.png',
              width: ScreenUtil().setSp(24),
              height: ScreenUtil().setSp(24),
              color: Colors.grey,
            ),
            activeIcon: Image.asset(
              'assets/icons/home.png',
              width: ScreenUtil().setSp(24),
              height: ScreenUtil().setSp(24),
              color: fbPrimary,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/notification.png',
              width: ScreenUtil().setSp(24),
              height: ScreenUtil().setSp(24),
              color: Colors.grey,
            ),
            activeIcon: Image.asset(
              'assets/icons/notification.png',
              width: ScreenUtil().setSp(24),
              height: ScreenUtil().setSp(24),
              color: fbPrimary,
            ),
            label: 'Notifications',
          ),
        ],
        selectedItemColor: fbPrimary,
        currentIndex: _selectedIndex,
      ),
    );
  }

  void _onTappedBar(int value) {
    setState(() {
      _selectedIndex = value;
    });
    _pageController.jumpToPage(value);
  }
}