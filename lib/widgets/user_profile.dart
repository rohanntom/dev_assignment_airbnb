// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../sdk/icons.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
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

  Widget _divider() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Divider(
        // height: 20,
        thickness: 1,
        color: Colors.grey,
      ),
    );
  }

  Widget _headlineWidget(String title) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ],
    );
  }

  Widget _accountSettingsBuilder(IconData icon, String title) {
    return Column(
      children: [
        Row(
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
        ),
        _divider()
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavBuilder(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      child: Image.network(
                        'https://i.pinimg.com/474x/76/4d/59/764d59d32f61f0f91dec8c442ab052c5.jpg',
                      ),
                      radius: 25,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Rohann",
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Show profile",
                      style: TextStyle(
                          decoration: TextDecoration.underline, fontSize: 18),
                    ),
                    SizedBox(height: 40),
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
                                  fontSize: 16,
                                ),
                              )
                            ]),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                _divider(),
                SizedBox(
                  height: 15,
                ),
                _headlineWidget('Account Settings'),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.person_outline,
                            size: 29,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Personal information',
                            style: TextStyle(fontSize: 16),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          )
                        ],
                      ),
                    ],
                  ),
                  onTap: () {},
                ),
                _divider(),
                _accountSettingsBuilder(
                    Icons.payments_outlined, 'Payments and payouts'),
                _accountSettingsBuilder(
                    Icons.translate_outlined, 'Translation'),
                _accountSettingsBuilder(
                    Icons.notifications_outlined, 'Notifications'),
                _accountSettingsBuilder(
                    Icons.card_travel_outlined, 'Travel for work'),
                SizedBox(
                  height: 15,
                ),
                _headlineWidget('Hosting'),
                SizedBox(
                  height: 30,
                ),
                _accountSettingsBuilder(
                    Icons.house_outlined, 'List your space'),
                _accountSettingsBuilder(
                    Icons.local_hotel_outlined, 'Learn about hosting'),
                _accountSettingsBuilder(
                    Icons.hot_tub_outlined, 'Host an Experience'),
                SizedBox(
                  height: 15,
                ),
                _headlineWidget('Support'),
                SizedBox(
                  height: 30,
                ),
                _accountSettingsBuilder(
                    MyFlutterApp.airbnb, 'How Airbnb works'),
                _accountSettingsBuilder(
                    Icons.health_and_safety_outlined, 'Safety Centre'),
                _accountSettingsBuilder(Icons.miscellaneous_services_outlined,
                    'Contact Neighborhood Support'),
                _accountSettingsBuilder(Icons.help_outline, 'Get help'),
                _accountSettingsBuilder(
                    Icons.feedback_outlined, 'Give us feedback'),
                SizedBox(
                  height: 15,
                ),
                _headlineWidget('Legal'),
                SizedBox(
                  height: 30,
                ),
                _accountSettingsBuilder(
                    Icons.library_books_outlined, 'Terms of Service'),
                _accountSettingsBuilder(Icons.lock_outline, 'Privacy settings'),
                InkWell(
                  child: Text(
                    'Log out',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  onTap: () {},
                ),
                _divider(),
                Text(
                  'Version 21.49 (24004805)',
                  style: TextStyle(fontSize: 13),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
