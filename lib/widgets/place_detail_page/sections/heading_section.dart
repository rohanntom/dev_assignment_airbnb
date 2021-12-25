import 'package:flutter/material.dart';

class HeadingSection extends StatelessWidget {
  const HeadingSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        'Private Hotel - Superior deluxe room with tree shade garden ',
        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 28),
      ),
      SizedBox(height: 15),
      Container(
        margin: EdgeInsets.fromLTRB(5, 0, 20, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                Icon(
                  Icons.star,
                  color: Colors.pink,
                  size: 18,
                ),
                Text(
                  ' 4.5 ',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                Text(
                  '(35 reviews)',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ],
            ),
            Icon(
              Icons.circle,
              color: Colors.grey,
              size: 5,
            ),
            Row(
              children: const [
                Text(
                  ' Kottayam, Kerala, India',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    ]);
  }
}
