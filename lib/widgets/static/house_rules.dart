// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HouseRules extends StatelessWidget {
  const HouseRules({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 40, 15, 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.arrow_back),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'House rules',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    _listingBuilder(Icons.timer, 'Check- in: Flexible'),
                    _listingBuilder(Icons.timer, 'Check out: 11:00'),
                    _listingBuilder(Icons.door_back_door,
                        'Self check-in with building staff'),
                    _listingBuilder(Icons.pets_rounded, 'Pets are allowed'),
                    _listingBuilder(Icons.smoking_rooms, 'Smoking is allowed'),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Additional rules',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                        '1. PLEASE KEEP THE HOUSE CLEAN.PLEASE NOTE ITS NOT A HOTEL.'),
                    Text(
                        '2. PLEASE KEEP THE GEYSER (WATER HEATER) SWITCHED OFF WHEN NOT IN USE.'),
                    Text(
                        '3. PLEASE BE MINDFUL OF NEIGHBORS, NEIGHBORHOOD and OTHER GUESTS/TENANTS.'),
                    Text('4. PLEASE AVOID LOUD MUSIC AND LATE-NIGHT PARTIES.'),
                    Text('5. PLEASE AVOID SMOKING INSIDE THE HOUSE.'),
                    Text(
                        '6. PLEASE KEEP WET AND DRY TRASH IN SEPARATE BINS. OUR MAID WILL PICK IT UP EVERY ALTERNATE DAY.'),
                    Text(
                        '7. NO HELP GIVEN FOR CLEANING WHILE YOU STAY. YOU NEED TO DO YOUR DISHES AND KEEP THE HOUSE CLEAN. DURING THE CHECKOUT, PLEASE MAKE SURE THE TRASH IS DROPPED IN THE GARBAGE CANS.'),
                    Text(
                        '8. UNETHICAL AND ILLEGAL ACTIVITIES INSIDE THE HOUSE IS STRICTLY PROHIBITED.'),
                    Text(
                        '9. NO EXTRA GUESTS WILL BE ALLOWED WITHOUT HOSTS PERMISSION.'),
                    Text(
                        '10. GUEST WILL BE RESPONSIBLE FOR ANY DAMAGES TO THE PROPERTY/ASSETS IN THE PROPERTY THAT HAPPENS DURING THE STAY.'),
                    Text(
                        '11. NO PERSONAL LOCKS ALLOWED TO THE DOOR APART FROM THE ONE WE GIVE.')
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _listingBuilder(IconData icon, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        children: [
          Icon(
            icon,
            size: 21,
          ),
          SizedBox(
            width: 10,
          ),
          Text(title),
        ],
      ),
    );
  }
}
