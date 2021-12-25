import 'package:flutter/material.dart';

class HostNameSection extends StatelessWidget {
  const HostNameSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 220,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Hosted by Harry',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '3 guests . 1 bedroom . 1 bed . 1 private bathroom',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
        Spacer(),
        CircleAvatar(
          backgroundImage: NetworkImage(
            'https://www.telegraph.co.uk/content/dam/Travel/hotels/asia/india/kerala/purity-cochin-bedroom.jpg',
          ),
          radius: 25,
        ),
      ],
    );
  }
}
