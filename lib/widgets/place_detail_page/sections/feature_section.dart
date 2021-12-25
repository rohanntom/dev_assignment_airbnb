import 'package:flutter/material.dart';

class FeaturesSection extends StatelessWidget {
  const FeaturesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _featureSets(
          Icons.star_half_outlined,
          'Enhanced Clean',
          'This host has committed to Airbnb\'s 5 step enhanced cleaning process. ',
        ),
        SizedBox(
          height: 20,
        ),
        _featureSets(
          Icons.door_back_door,
          'Self check-in',
          'You can check in with  the doorperson. ',
        ),
        SizedBox(
          height: 20,
        ),
        _featureSets(
          Icons.wifi,
          'Wifi',
          'Guests often search for this popular amenity. ',
        ),
      ],
    );
  }

  Widget _featureSets(IconData icon, String title, String description) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 25, 0),
              child: Icon(
                icon,
                size: 25,
              ),
            ),
            Container(
              width: 240,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
