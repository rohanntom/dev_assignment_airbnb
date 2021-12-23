// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white10,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 20,
            ),
            onPressed: () {},
          ),
          titleSpacing: 90,
          title: Text(
            'Finish signing up',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w800),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  labelText: 'First name',
                  // hintText: 'First name',
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  //hintText: 'Last name',
                  labelText: 'Last name',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Make sure it matches the name on your government ID.',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              SizedBox(
                height: 25,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    //hintText: 'Birthday(mm/dd/yyyy)',
                    labelText: 'Birthday(mm/dd/yyyy)',
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.black87,
                        size: 25,
                      ),
                      onPressed: () {},
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'To sign up, you need to be at least 18. Your birthday won\'t be shared with other people who use Airbnb.',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              SizedBox(
                height: 25,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  // hintText: 'Email',
                  labelText: 'Email',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'We\'ll email you trip confirmations and receipts.',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              SizedBox(
                height: 25,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  //hintText: 'Password',

                  labelText: 'Password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.visibility,
                      color: Colors.black87,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text.rich(
                TextSpan(
                  text:
                      'By selecting Agree and continue, I agree to Airbnb\'s ',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(
                      text: 'Terms of Service',
                      style: TextStyle(
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: ', '),
                    TextSpan(
                      text: 'Payments Terms of Service',
                      style: TextStyle(
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: ' and '),
                    TextSpan(
                      text: 'Nondiscrimination Policy',
                      style: TextStyle(
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: ' and acknowledge the '),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: TextStyle(
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: '.'),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              _buttonContainer('Agree and continue'),
            ],
          ),
        ),
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
              color: Colors.black,
              //border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: 18,
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
}
