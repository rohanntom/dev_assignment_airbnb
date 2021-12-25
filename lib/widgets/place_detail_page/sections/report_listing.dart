import 'package:flutter/material.dart';

class ReportListing extends StatelessWidget {
  const ReportListing({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.flag),
        SizedBox(
          width: 10,
        ),
        InkWell(
          onTap: () {},
          child: Text(
            'Report this listing',
            style: TextStyle(
                decoration: TextDecoration.underline,
                color: Colors.grey,
                fontSize: 15),
          ),
        ),
      ],
    );
  }
}
