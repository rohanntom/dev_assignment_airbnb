import 'package:dev_assignment_airbnb/widgets/availability_date.dart';
import 'package:dev_assignment_airbnb/widgets/booking.dart';
import 'package:dev_assignment_airbnb/widgets/date_picking_sheet.dart';
import 'package:dev_assignment_airbnb/widgets/edit_personal_info.dart';
import 'package:dev_assignment_airbnb/widgets/login.dart';
import 'package:dev_assignment_airbnb/widgets/signup.dart';
import 'package:dev_assignment_airbnb/widgets/static/place_description.dart';
import 'package:dev_assignment_airbnb/widgets/update_email.dart';
import 'package:dev_assignment_airbnb/widgets/user_profile.dart';

import './sdk/security/services/authentication_service.dart';

import 'package:flutter/material.dart';

import './screens/places_overview_screen.dart';
import './widgets/place_list.dart';
import './widgets/place_detail.dart';
import './widgets/static/health_and_safety.dart';
import './widgets/static/house_rules.dart';
import './widgets/static/cancellation_policy.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  // static Map<int, Color> blackMap = {
  //   50: Color(0xFF000000),
  // };
  // final MaterialColor _black = MaterialColor(Colors.black.value, blackMap);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        //primaryColor: Colors.black,
        accentColor: Colors.pink,
      ),
      home: AvailabilityDate(),
      //UpdateEmail(),
      //Login(),
      //SignUp(),
      //EditPersonalInfo()
      //DatePickingSheet(),
      //UserProfile(),
      // Booking(),
      //PlaceDescription()
      //CancellationPolicy()
      // HealthAndSafety()
      // HouseRules()
      // PlaceList(),
      //    PlaceDetail(),
      //const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // const MyHomePage({
  //   Key? key,
  // }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dev "),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                textCapitalization: TextCapitalization.none,
                onChanged: (v) => this.email = v,
              ),
              SizedBox(height: 10),
              TextField(
                textCapitalization: TextCapitalization.none,
                onChanged: (v) => this.password = v,
              ),
              SizedBox(height: 10),
              TextButton(
                child: Text("Signup"),
                onPressed: this.signup,
              ),
              SizedBox(height: 10),
              TextButton(
                child: Text("Login"),
                onPressed: this.login,
              ),
              SizedBox(height: 10),
              TextButton(
                child: Text("logout"),
                onPressed: this.logout,
              )
            ],
          ),
        ),
      ),
    );
  }

  void signup() async {
    final service = AuthenticationService();

    await service.signup(
      this.email,
      this.password,
      "Dev",
      "Assignment",
      DateTime.now(),
    );

    print(service.authenticatedUser);
  }

  void login() async {
    final service = AuthenticationService();

    await service.login(this.email, this.password);
    print(service.authenticatedUser);
  }

  void logout() async {
    final service = AuthenticationService();
    await service.logout();
  }
}
