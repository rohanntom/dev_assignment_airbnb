import 'package:dev_assignment_airbnb/widgets/user_profile_page/sections/account_section.dart';
import 'package:dev_assignment_airbnb/widgets/user_profile_page/sections/hosting_section.dart';
import 'package:flutter/material.dart';

import '../logout/logout.dart';

import 'sections/legal_section.dart';
import 'sections/personal_info.dart';
import 'sections/profile_section.dart';
import 'sections/support_section.dart';

class UserProfile extends StatefulWidget {
  static const routeName = '/user-profile';

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  bool _isLoggedIn = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isLoggedIn == true
          ? ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProfileSection(),
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
                      PersonalInfo(),
                      _divider(),
                      AccountSection(),
                      _headlineWidget('Hosting'),
                      HostingSection(),
                      _headlineWidget('Support'),
                      SupportSection(),
                      _headlineWidget('Legal'),
                      LegalSection(),
                      InkWell(
                        child: Text(
                          'Log out',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        onTap: () {
                          setState(() {
                            _isLoggedIn = !_isLoggedIn;
                          });
                        },
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
            )
          : Logout(),
    );
  }

  Widget _divider() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Divider(
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
}
