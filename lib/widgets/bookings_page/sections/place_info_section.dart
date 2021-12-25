import 'package:flutter/material.dart';

class PlaceInfoSection extends StatelessWidget {
  const PlaceInfoSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              height: 100,
              width: 130,
              child: Image.network(
                'https://www.telegraph.co.uk/content/dam/Travel/hotels/asia/india/kerala/purity-cochin-bedroom.jpg',
                fit: BoxFit.fill,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Container(
              width: 250,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hotel stay',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    Text(
                      'Private Hotel - Superior deluxe room with tree shade garden ',
                      style: TextStyle(fontSize: 17),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.star,
                          color: Colors.pink,
                          size: 16,
                        ),
                        Text(
                          '4.5 ',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        Text(
                          '(35)',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        Text(
                          '  .  ',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        Icon(
                          Icons.person,
                          color: Colors.pink,
                          size: 16,
                        ),
                        Text(
                          ' Superhost',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
