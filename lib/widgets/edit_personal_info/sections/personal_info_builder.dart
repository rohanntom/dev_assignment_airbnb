import 'package:dev_assignment_airbnb/widgets/update_email/update_email.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PersonalInfoBuilder extends StatefulWidget {
  @override
  State<PersonalInfoBuilder> createState() => _PersonalInfoBuilderState();
}

class _PersonalInfoBuilderState extends State<PersonalInfoBuilder> {
  DateTime? _selectedDate;
  List gender = ["Male", "Female", "Other"];
  String? select;
  final _firstName = TextEditingController();
  final _lastName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
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
        InkWell(
          child: Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 5),
              child: select == null
                  ? Text(
                      'Select Gender',
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    )
                  : Text(
                      '$select',
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    )),
          onTap: () => _genderSelect(),
        ),
        Divider(
          thickness: 1,
          color: Colors.grey,
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          'Birthdate',
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          height: 6,
        ),
        Row(
          children: [
            _selectedDate == null
                ? Text(
                    'Enter Birthdate',
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  )
                : Text(
                    DateFormat.yMd().format(_selectedDate!),
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
        Divider(
          thickness: 1,
          color: Colors.grey,
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
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
              onTap: () {
                Navigator.of(context).pushNamed(UpdateEmail.routeName);
              },
            ),
          ],
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          'Enter Email',
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        Divider(
          thickness: 1,
          color: Colors.grey,
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
                    style: TextStyle(color: Colors.blue, fontSize: 20),
                  ),
                  onTap: () {},
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text('For notification, remainders, and help logging in.'),
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
    );
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
        _selectedDate = pickedDate;
      });
    });
  }

  Row _addRadioButton(int index, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(title),
        Spacer(),
        Radio<String>(
          value: gender[index],
          groupValue: select,
          onChanged: (value) {
            setState(() {
              print(value);
              select = value.toString();
              Navigator.of(context).pop();
            });
          },
        ),
      ],
    );
  }

  Future _genderSelect() {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          'Gender',
        ),
        actions: <Widget>[
          Column(
            children: [
              _addRadioButton(0, 'Male'),
              _addRadioButton(1, 'Female'),
              _addRadioButton(2, 'Others'),
            ],
          )
        ],
        actionsPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      ),
    );
  }
}
