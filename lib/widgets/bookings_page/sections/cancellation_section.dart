import 'package:flutter/material.dart';

class CancellationSection extends StatelessWidget {
  const CancellationSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Cancellation policy",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Free cancellation for 48 hours. After that, cancel before 13:00 on 9 Jan and get a 50% refund, minus the service fee.',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          InkWell(
            child: Text(
              'Learn more',
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            onTap: () {},
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Our Extenuating Circumstances policy does not cover travel disruptions caused by COVID-19.',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          InkWell(
            child: Text(
              'Learn more',
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
