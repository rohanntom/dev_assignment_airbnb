import 'dart:async';
import 'package:dev_assignment_airbnb/sdk/icons.dart';
import 'package:dev_assignment_airbnb/widgets/bottom_navbar.dart';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.of(context).pushReplacementNamed(
        //ListingsPage.routeName,
        BottomNavBar.routeName,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Icon(
          MyFlutterApp.airbnb,
          color: Colors.grey,
          size: 80,
        ),
      ),
    );
  }
}
