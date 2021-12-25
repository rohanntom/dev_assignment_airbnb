import 'package:flutter/material.dart';

import '../../date_picker/date_picking_sheet.dart';

class YourTripSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Your trip",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 20,
          ),
          _tripDetail('Dates', '25-26 Dec 2021', context),
          SizedBox(
            height: 20,
          ),
          _tripDetail('Guests', '1 guest', context),
        ],
      ),
    );
  }

  Widget _tripDetail(String title, String detail, BuildContext context) {
    return Row(children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            detail,
            style: TextStyle(color: Colors.grey[700], fontSize: 18),
          )
        ],
      ),
      Spacer(),
      InkWell(
        child: Text(
          'Edit',
          style: TextStyle(
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
        onTap: () {
          title == 'Dates'
              ? Navigator.of(context).pushNamed(DatePickingSheet.routeName)
              : null;
        },
      )
    ]);
  }
}
