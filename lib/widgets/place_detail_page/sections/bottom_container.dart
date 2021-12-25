import 'package:dev_assignment_airbnb/widgets/bookings_page/booking.dart';
import 'package:flutter/material.dart';

import '../../date_picker/date_picking_sheet.dart';

class BottomContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              child: Column(children: [
                Row(children: const [
                  Text(
                    '\$34.99',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    '/night',
                    style: TextStyle(fontSize: 18),
                  ),
                ]),
                InkWell(
                    child: Text(
                      '24 Dec-30 Dec',
                      style: TextStyle(
                          fontSize: 16, decoration: TextDecoration.underline),
                    ),
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(DatePickingSheet.routeName);
                    }),
              ]),
            ),
            Spacer(),
            InkWell(
              child: Container(
                decoration: new BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(6),
                ),
                width: 150,
                height: 65,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Reserve',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.of(context).pushNamed(Booking.routeName) as Navigator;
              },
            ),
          ],
        ),
      ),
    );
  }
}
