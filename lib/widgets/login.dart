// ignore_for_file: prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../sdk/icons.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget bottomNavBuilder() {
    return BottomNavigationBar(
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
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.pink,
      unselectedItemColor: Colors.grey,
      onTap: _onItemTapped,
    );
  }

  Widget _buttonContainer(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 15),
      child: InkWell(
        child: Container(
          height: 55,
          width: 360,
          decoration: new BoxDecoration(
              color: Colors.pink,
              //border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ],
          ),
        ),
        onTap: () {},
      ),
    );
  }

  Widget _divider() {
    return Divider(
      thickness: 1,
      color: Colors.grey,
    );
  }

  Widget _accountSettingsBuilder(IconData icon, String title) {
    return Row(
      children: [
        Icon(
          icon,
          size: 30,
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 18),
        ),
        Spacer(),
        Icon(
          Icons.arrow_forward_ios,
          size: 18,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavBuilder(),
      body: Padding(
          padding: EdgeInsets.fromLTRB(30, 60, 30, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your profile',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Log in to start planning your next trip.',
                style: TextStyle(color: Colors.grey, fontSize: 17),
              ),
              SizedBox(
                height: 20,
              ),
              _buttonContainer('Log in'),
              SizedBox(
                height: 10,
              ),
              Text.rich(
                TextSpan(
                  text: 'Don\'t have an account? ',
                  style: TextStyle(fontSize: 17),
                  children: [
                    TextSpan(
                      text: 'Sign up',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              _divider(),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(
                    Icons.money,
                    color: Colors.pink,
                    size: 34,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Earn money from your extra space',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          'Learn more',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        )
                      ]),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              _divider(),
              SizedBox(
                height: 10,
              ),
              _accountSettingsBuilder(Icons.settings_outlined, 'Settings'),
              SizedBox(
                height: 10,
              ),
              _divider(),
              SizedBox(
                height: 10,
              ),
              _accountSettingsBuilder(Icons.help_outline, 'Get help'),
            ],
          )),
    );
  }
}
