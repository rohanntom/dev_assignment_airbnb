import 'package:flutter/material.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          child: Image.network(
            'https://i.pinimg.com/474x/76/4d/59/764d59d32f61f0f91dec8c442ab052c5.jpg',
          ),
          radius: 25,
        ),
        SizedBox(height: 10),
        Text(
          "Rohann",
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 8),
        Text(
          "Show profile",
          style: TextStyle(decoration: TextDecoration.underline, fontSize: 18),
        ),
        SizedBox(height: 40),
        Row(
          children: [
            Icon(
              Icons.money,
              color: Colors.pink,
              size: 34,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Earn money from your extra space',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    'Learn more',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 16,
                    ),
                  )
                ]),
          ],
        )
      ],
    );
  }
}
