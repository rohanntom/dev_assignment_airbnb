// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../widgets/adaptive_flat_button.dart';

class AvailabilityDate extends StatefulWidget {
  const AvailabilityDate({Key? key}) : super(key: key);

  @override
  State<AvailabilityDate> createState() => _AvailabilityDateState();
}

class _AvailabilityDateState extends State<AvailabilityDate> {
  late DateTime _selectedDate;

  Widget _bottomNavBar() {
    return Container(
      width: 430,
      height: 80,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      Text(
                        '\$34.99',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text(
                        '/night',
                        style: TextStyle(fontSize: 18),
                      ),
                    ]),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.pink,
                          size: 15,
                        ),
                        Text(
                          '4.5',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    )
                  ]),
            ),
            Spacer(),
            InkWell(
              child: Container(
                decoration: new BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(6)),
                width: 100,
                height: 60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Save',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  void _presentDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2021),
      lastDate: DateTime.now(),
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _selectedDate = pickedDate;
      });
    });
  }

  Widget _dateFormat() {
    return Container(
      height: 70,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              _selectedDate == null
                  ? 'No Date Chosen!'
                  : 'Picked Date: ${DateFormat.yMd().format(_selectedDate)}',
            ),
          ),
          AdaptiveFlatButton('Choose Date', _presentDatePicker)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavBar(),
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
                'Clear',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  //decoration: TextDecoration.underline,
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select dates',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Add your travel dates for exact pricing.',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Text('Start date:', style: TextStyle(fontSize: 20)),
                _dateFormat(),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text('End date:', style: TextStyle(fontSize: 20)),
                _dateFormat(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
