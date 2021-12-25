import 'package:flutter/material.dart';

class AccountSection extends StatelessWidget {
  const AccountSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _accountSettingsBuilder(
            Icons.payments_outlined, 'Payments and payouts'),
        _accountSettingsBuilder(Icons.translate_outlined, 'Translation'),
        _accountSettingsBuilder(Icons.notifications_outlined, 'Notifications'),
        _accountSettingsBuilder(Icons.card_travel_outlined, 'Travel for work'),
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
        )
      ],
    );
  }
}
