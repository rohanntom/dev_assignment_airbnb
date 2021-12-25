import 'package:flutter/material.dart';

class HostingSection extends StatelessWidget {
  const HostingSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        _accountSettingsBuilder(Icons.house_outlined, 'List your space'),
        _accountSettingsBuilder(
            Icons.local_hotel_outlined, 'Learn about hosting'),
        _accountSettingsBuilder(Icons.hot_tub_outlined, 'Host an Experience'),
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
