import 'package:dev_assignment_airbnb/sdk/icons.dart';
import 'package:flutter/material.dart';

class DisclaimerSection extends StatelessWidget {
  const DisclaimerSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 280,
              child: Text(
                'To protect your payment, never transfer money or communicate outside of the Airbnb website or app.',
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
            ),
            Spacer(),
            Icon(
              MyFlutterApp.airbnb,
              size: 20,
            ),
          ],
        )
      ],
    );
  }
}
