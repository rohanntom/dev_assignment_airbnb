import 'package:dev_assignment_airbnb/sdk/icons.dart';
import 'package:flutter/material.dart';

class SupportSection extends StatelessWidget {
  const SupportSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        _accountSettingsBuilder(MyFlutterApp.airbnb, 'How Airbnb works'),
        _accountSettingsBuilder(
            Icons.health_and_safety_outlined, 'Safety Centre'),
        _accountSettingsBuilder(Icons.miscellaneous_services_outlined,
            'Contact Neighborhood Support'),
        _accountSettingsBuilder(Icons.help_outline, 'Get help'),
        _accountSettingsBuilder(Icons.feedback_outlined, 'Give us feedback'),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }

  Widget _accountSettingsBuilder(IconData icon, String title) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              icon,
              size: 30,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 18),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              size: 18,
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: Divider(
            thickness: 1,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
