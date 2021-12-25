// ignore_for_file: prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

class CancellationPolicy extends StatelessWidget {
  const CancellationPolicy({Key? key}) : super(key: key);
  static const routeName = '/cancellation-policy';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 40, 15, 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cancellation Policy',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Text(
                    'Cancel by',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  _listBuilder('24 Dec', 'Full refund'),
                  SizedBox(
                    height: 15,
                  ),
                  _divider(),
                  SizedBox(
                    height: 15,
                  ),
                  _listBuilder('25 Dec',
                      'Full refund, minus the first night and other service charges.'),
                  SizedBox(
                    height: 15,
                  ),
                  _divider(),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Learn more about cancellation policies',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _listBuilder(String title, String description) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text('15:00', style: TextStyle(fontSize: 12, color: Colors.grey))
          ],
        ),
        SizedBox(
          width: 50,
        ),
        Container(
          width: 250,
          child: Text(description),
        ),
      ],
    );
  }

  Widget _divider() {
    return Divider(
      height: 20,
      thickness: 1,
      color: Colors.grey,
    );
  }
}
