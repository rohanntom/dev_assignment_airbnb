import 'package:dev_assignment_airbnb/sdk/security/services/authentication_service.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'sections/name_section.dart';
import 'sections/terms_and_conditions_section.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);
  static const routeName = '/sign-up';

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  DateTime? _birthday;
  bool _isHidden = true;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
            onPressed: () {
              Navigator.pop(context);
            },
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
              NameSection(
                firstNameController: _firstNameController,
                lastNameController: _lastNameController,
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
              Container(
                width: 380,
                height: 60,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: Row(
                    children: [
                      _birthday == null
                          ? Text(
                              'Birthday(mm/dd/yyyy)',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black54),
                            )
                          : Text(
                              DateFormat.yMd().format(_birthday!),
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                      Spacer(),
                      IconButton(
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.black87,
                          size: 25,
                        ),
                        onPressed: () => _presentDatePicker(),
                      ),
                    ],
                  ),
                ),
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
              Container(
                width: 380,
                height: 60,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: InputBorder.none,
                    ),
                  ),
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
              Container(
                width: 380,
                height: 60,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextField(
                    controller: _passwordController,
                    obscureText: _isHidden,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: InputBorder.none,
                      suffixIcon: IconButton(
                        icon: _isHidden
                            ? Icon(
                                Icons.visibility,
                                color: Colors.black87,
                              )
                            : Icon(
                                Icons.visibility_off,
                                color: Colors.black87,
                              ),
                        onPressed: () {
                          _togglePasswordView();
                        },
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              TermsAndConditionsSection(),
              SizedBox(
                height: 40,
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
          width: 365,
          decoration: new BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(10)),
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
        onTap: this._signUp,
      ),
    );
  }

  void _signUp() {
    final email = this._emailController.text;
    final password = this._passwordController.text;
    final firstName = this._firstNameController.text;
    final lastName = this._lastNameController.text;
    final birthday = this._birthday;
    if (email.isEmpty ||
        password.isEmpty ||
        firstName.isEmpty ||
        lastName.isEmpty ||
        birthday == null) {
      return;
    }
    try {
      AuthenticationService()
          .signup(email, password, firstName, lastName, birthday);
    } catch (e) {
      if (e == "User with email already exists") {}
    }
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  void _presentDatePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2021),
            lastDate: DateTime.now())
        .then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _birthday = pickedDate;
      });
    });
  }
}
