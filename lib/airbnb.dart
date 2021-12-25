import 'package:dev_assignment_airbnb/widgets/bottom_navbar.dart';
import 'package:flutter/material.dart';

import 'widgets/bookings_page/booking.dart';
import 'widgets/listings_page/listings_page.dart';
import 'widgets/place_detail_page/static/cancellation_policy.dart';
import 'widgets/place_detail_page/static/health_and_safety.dart';
import 'widgets/place_detail_page/static/house_rules.dart';
import 'widgets/splash_screen.dart';
import 'widgets/date_picker/date_picking_sheet.dart';
import 'widgets/login_page/login.dart';
import 'widgets/place_detail_page/place_detail.dart';
import 'widgets/edit_personal_info/edit_personal_info.dart';
import 'widgets/logout/logout.dart';
import 'widgets/signup/signup.dart';
import 'widgets/update_email/update_email.dart';
import 'widgets/user_profile_page/user_profile.dart';

class AirBnb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: SplashScreen(),
      routes: {
        BottomNavBar.routeName: (ctx) => BottomNavBar(),
        ListingsPage.routeName: (ctx) => ListingsPage(),
        PlaceDetail.routeName: (ctx) => PlaceDetail(),
        HouseRules.routeName: (ctx) => HouseRules(),
        HealthAndSafety.routeName: (ctx) => HealthAndSafety(),
        CancellationPolicy.routeName: (ctx) => CancellationPolicy(),
        Booking.routeName: (ctx) => Booking(),
        UserProfile.routeName: (ctx) => UserProfile(),
        EditPersonalInfo.routeName: (ctx) => EditPersonalInfo(),
        SignUp.routeName: (ctx) => SignUp(),
        Logout.routeName: (ctx) => Logout(),
        UpdateEmail.routeName: (ctx) => UpdateEmail(),
        DatePickingSheet.routeName: (ctx) => DatePickingSheet(),
        Login.routeName: (ctx) => Login(),
      },
    );
  }
}
