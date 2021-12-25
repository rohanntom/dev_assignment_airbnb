import 'package:dev_assignment_airbnb/widgets/login_page/login.dart';
import 'package:dev_assignment_airbnb/widgets/signup/signup.dart';
import 'package:flutter/material.dart';

import 'section/leran_more_section.dart';

class Logout extends StatefulWidget {
  static const routeName = '/logout';
  @override
  State<Logout> createState() => _LogoutState();
}

class _LogoutState extends State<Logout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              InkWell(
                child: Text.rich(
                  TextSpan(
                    text: 'Don\'t have an account? ',
                    style: TextStyle(fontSize: 17),
                    children: const [
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
                onTap: () {
                  Navigator.of(context).pushNamed(SignUp.routeName);
                },
              ),
              SizedBox(
                height: 15,
              ),
              _divider(),
              SizedBox(
                height: 15,
              ),
              LearnMoreSection(),
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

  Widget _buttonContainer(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 15),
      child: InkWell(
        child: Container(
          height: 55,
          width: 360,
          decoration: new BoxDecoration(
              color: Colors.pink, borderRadius: BorderRadius.circular(10)),
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
        onTap: () {
          Navigator.of(context).pushNamed(Login.routeName);
        },
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
}
