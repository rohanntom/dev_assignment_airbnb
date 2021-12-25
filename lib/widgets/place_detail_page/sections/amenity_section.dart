import 'package:flutter/material.dart';

class AmenitySection extends StatelessWidget {
  const AmenitySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _amenityBuilder(Icons.car_rental_outlined, 'Free parking on premises'),
        _amenityBuilder(
            Icons.calendar_today_outlined, 'Long-term stays allowed'),
        _amenityBuilder(Icons.door_back_door_outlined, 'Private entrance'),
        _amenityBuilder(Icons.tv_outlined, 'Television'),
        _amenityBuilder(Icons.pets_rounded, 'Pets allowed'),
        _buttonContainer('Show all amenities'),
      ],
    );
  }

  Widget _amenityBuilder(IconData icon, String title) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Icon(
            icon,
            size: 30,
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }

  Widget _buttonContainer(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 15),
      child: Container(
        height: 45,
        width: 360,
        decoration: new BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
