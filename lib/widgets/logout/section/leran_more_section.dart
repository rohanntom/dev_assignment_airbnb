import 'package:flutter/material.dart';

class LearnMoreSection extends StatelessWidget {
  const LearnMoreSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.money,
          color: Colors.pink,
          size: 34,
        ),
        SizedBox(
          width: 20,
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
          Text(
            'Earn money from your extra space',
            style: TextStyle(fontSize: 18),
          ),
          Text(
            'Learn more',
            style: TextStyle(
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          )
        ]),
      ],
    );
  }
}
