// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class EditPersonalInfo extends StatefulWidget {
  EditPersonalInfo({Key? key}) : super(key: key);

  @override
  State<EditPersonalInfo> createState() => _EditPersonalInfoState();
}

class _EditPersonalInfoState extends State<EditPersonalInfo> {
  final _firstName = TextEditingController();
  final _lastName = TextEditingController();
  //final _gender = TextEditingController();
  //final _email = TextEditingController();
  late DateTime _selectedDate;
  List gender = ["Male", "Female", "Other"];
  String? select;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Column addRadioButton(int btnValue, String title) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Radio<String>(
          // activeColor: Theme.of(context).primaryColor,
          value: gender[btnValue],
          groupValue: select,
          onChanged: (value) {
            setState(() {
              print(value);
              select = value.toString();
            });
          },
        ),
        Text(title)
      ],
    );
  }

  Widget genderSelect() {
    return Container(
        margin: const EdgeInsets.fromLTRB(50, 15, 50, 00),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Gender',
            ),
            Column(
              children: <Widget>[
                addRadioButton(0, 'Male'),
                addRadioButton(1, 'Female'),
                addRadioButton(2, 'Others'),
              ],
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white10,
        leading: Icon(
          Icons.arrow_back_ios,
          size: 18,
          color: Colors.black,
        ),
        title: Row(
          children: [
            Spacer(),
            InkWell(
              child: Text(
                'Save',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  //decoration: TextDecoration.underline,
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Edit personal info',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 25, 15, 15),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'First name',
                        style: TextStyle(fontSize: 18),
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Name Required!';
                          } else {
                            return null;
                          }
                        },

                        decoration: InputDecoration(
                          hintText: 'Enter First Name',
                          hintStyle: TextStyle(color: Colors.black26),
                        ),
                        controller: _firstName,
                        //onFieldSubmitted: (_) => (),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Last name',
                        style: TextStyle(fontSize: 18),
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Name Required!';
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          hintText: 'Enter Last Name',
                          hintStyle: TextStyle(color: Colors.black26),
                        ),
                        controller: _lastName,
                        // onFieldSubmitted: (_) => _submitData(),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Gender',
                        style: TextStyle(fontSize: 18),
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Gender Required!';
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          hintText: 'Select Gender',
                          hintStyle: TextStyle(color: Colors.black26),
                        ),

                        // controller: select,
                        // onFieldSubmitted: (_) => _submitData(),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Birthdate',
                        style: TextStyle(fontSize: 18),
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Birthdate Required!';
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          hintText: 'Select Birthdate',
                          hintStyle: TextStyle(color: Colors.black26),
                        ),

                        //controller: _lastName,
                        //keyboardType: TextInputType.number,
                        // onFieldSubmitted: (_) => _submitData(),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Text(
                            'Email',
                            style: TextStyle(fontSize: 20),
                          ),
                          Spacer(),
                          InkWell(
                            child: Text(
                              'Edit',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 20),
                            ),
                            onTap: () {},
                          ),
                        ],
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Email Required!';
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          hintText: 'Enter Email',
                          hintStyle: TextStyle(color: Colors.black26),
                        ),

                        //controller: _lastName,
                        //keyboardType: TextInputType.number,
                        // onFieldSubmitted: (_) => _submitData(),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Phone number',
                                style: TextStyle(fontSize: 20),
                              ),
                              Spacer(),
                              InkWell(
                                child: Text(
                                  'Edit',
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 20),
                                ),
                                onTap: () {},
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                              'For notification, remainders, and help logging in.'),
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            '+91 94958698725',
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
