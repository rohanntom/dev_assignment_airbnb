import 'package:flutter/material.dart';

import 'section/login_section.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
  static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white12,
          leading: IconButton(
            icon: Icon(
              Icons.close,
              color: Colors.black,
              size: 20,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          titleSpacing: 130,
          title: Text(
            'Login',
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.w800),
          )),
      body: Column(
        children: [
          _divider(),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 30, 25, 25),
            child: LoginSection(),
          ),
          Spacer(),
          _divider(),
          _buttonContainer('Login'),
        ],
      ),
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
              color: Colors.black, borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: 20,
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
      color: Colors.grey[300],
    );
  }
}
