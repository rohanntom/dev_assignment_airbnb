import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'adaptive_flat_button.dart';
import 'bottom_nav_container.dart';

class DatePickingSheet extends StatefulWidget {
  const DatePickingSheet({Key? key}) : super(key: key);
  static const routeName = '/date-picking';

  @override
  State<DatePickingSheet> createState() => _DatePickingSheetState();
}

class _DatePickingSheetState extends State<DatePickingSheet> {
  DateTime? _startDate;
  DateTime? _endDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavContainer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white12,
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
        title: Row(
          children: [
            Spacer(),
            InkWell(
              child: Text(
                'Clear',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              onTap: () {
                setState(() {
                  _startDate = null;
                  _endDate = null;
                });
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Select dates',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Add your travel dates for exact pricing.',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Start date',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              _dateFormat('start'),
              SizedBox(
                height: 30,
              ),
              Text(
                'End date',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              _dateFormat('end'),
            ],
          ),
        ),
      ),
    );
  }

  void _startDatePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime.now(),
            lastDate: DateTime(2023))
        .then((startPickedDate) {
      if (startPickedDate == null) {
        return;
      }
      setState(() {
        _startDate = startPickedDate;
      });
    });
  }

  void _endDatePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime.now(),
            lastDate: DateTime(2023))
        .then((endPickedDate) {
      if (endPickedDate == null) {
        return;
      }
      setState(() {
        _endDate = endPickedDate;
      });
    });
  }

  Widget _dateFormat(String date) {
    return date == 'end'
        ? SizedBox(
            height: 40,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    _endDate == null
                        ? 'No Date Chosen!'
                        : ' ${DateFormat.yMd().format(_endDate!)}',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                AdaptiveFlatButton('Choose Date', _endDatePicker),
              ],
            ),
          )
        : SizedBox(
            height: 40,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    _startDate == null
                        ? 'No Date Chosen!'
                        : ' ${DateFormat.yMd().format(_startDate!)}',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                AdaptiveFlatButton('Choose Date', _startDatePicker),
              ],
            ),
          );
  }
}
