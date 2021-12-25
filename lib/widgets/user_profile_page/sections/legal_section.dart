import 'package:flutter/material.dart';

class LegalSection extends StatelessWidget {
  const LegalSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        _accountSettingsBuilder(
            Icons.library_books_outlined, 'Terms of Service'),
        _accountSettingsBuilder(Icons.lock_outline, 'Privacy settings'),
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
