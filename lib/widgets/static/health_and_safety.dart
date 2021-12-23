import 'package:flutter/material.dart';

class HealthAndSafety extends StatelessWidget {
  const HealthAndSafety({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
                    'Health & safety',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  _listingBuilder(Icons.coronavirus,
                      'During the COVID-19 pandemic, all hosts and guests must review and follow Airbnb\'s social distancing and other COVID-19-related guidelines. '),
                  _listingBuilder(Icons.cabin_rounded,
                      'Carbon monoxide alarm not reported - The host hasn\'t reported a carbon monoxide alarm on the property. We suggest bringing a portable detector for your trip. '),
                  _listingBuilder(Icons.alarm,
                      'Smoke alarm not reported - The host hasn\'t reported a smoke alarm on the property. We suggest bringing a portable detector for your trip. '),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'You must also acknowledge',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  _listingBuilder(Icons.network_cell,
                      'Must climb stairs - the studio room is in the terrace which is 3rd floor of the house. there is no lift/elevator. one must use stairs. '),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _listingBuilder(IconData icon, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 21,
          ),
          SizedBox(
            width: 10,
          ),
          Container(
              width: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title),
                  Text(
                    'Show more',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
