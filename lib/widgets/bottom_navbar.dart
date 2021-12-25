import 'package:dev_assignment_airbnb/sdk/icons.dart';
import 'package:dev_assignment_airbnb/widgets/splash_screen.dart';
import 'package:dev_assignment_airbnb/widgets/user_profile_page/user_profile.dart';
import 'package:flutter/material.dart';

import 'listings_page/listings_page.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({Key? key}) : super(key: key);
  static const routeName = '/bottom-navbar';
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List? _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': ListingsPage(),
      },
      {
        'page': SplashScreen(),
      },
      {
        'page': SplashScreen(),
      },
      {
        'page': SplashScreen(),
      },
      {
        'page': UserProfile(),
      },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages![_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              MyFlutterApp.search,
              size: 23,
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              MyFlutterApp.heart,
              size: 24,
            ),
            label: 'Wishlists',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                MyFlutterApp.airbnb,
                size: 24,
              ),
              label: 'Trips'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.messenger_outline_rounded,
              size: 24,
            ),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
              size: 24,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedPageIndex,
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.grey,
        onTap: _selectPage,
      ),
    );
  }
}
