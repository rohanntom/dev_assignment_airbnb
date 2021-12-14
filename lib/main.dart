import 'package:dev_assignment_airbnb/sdk/security/services/authentication_service.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

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
