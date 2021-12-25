import 'package:dev_assignment_airbnb/widgets/place_detail_page/place_detail.dart';
import 'package:flutter/material.dart';

class Listing extends StatelessWidget {
  const Listing({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: GestureDetector(
        onTap: () => this._onListingTap(context),
        child: Column(
          children: [
            const _Image(),
            SizedBox(
              height: 8,
            ),
            Row(
              children: const [
                Icon(
                  Icons.star,
                  color: Colors.pink,
                  size: 18,
                ),
                Text(
                  '4.5 ',
                  style: TextStyle(fontSize: 17),
                ),
                Text(
                  '(35)',
                  style: TextStyle(fontSize: 17),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              child: Text(
                'Private Hotel - Superior deluxe room with tree shade garden and private party',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
              ),
              alignment: Alignment.topLeft,
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              child: Text.rich(
                TextSpan(
                  text: '\$34.99',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                  children: const [
                    TextSpan(
                        text: '/night',
                        style: TextStyle(fontWeight: FontWeight.w300)),
                  ],
                ),
              ),
              alignment: Alignment.topLeft,
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              child: Text(
                '\$34.99 total',
                style: TextStyle(
                    color: Colors.grey,
                    decoration: TextDecoration.underline,
                    fontSize: 16),
              ),
              alignment: Alignment.topLeft,
            ),
          ],
        ),
      ),
    );
  }

  void _onListingTap(BuildContext context) {
    Navigator.of(context).pushNamed(PlaceDetail.routeName);
  }
}

class _Image extends StatelessWidget {
  const _Image({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20)
              // topLeft: 20, topRight: 20, bottomLeft: 20, bottomRight: 20
              ),
          child: Image.network(
            'https://www.telegraph.co.uk/content/dam/Travel/hotels/asia/india/kerala/purity-cochin-bedroom.jpg',
            fit: BoxFit.contain,
          ),
        ),
        Positioned(
          top: 8,
          right: 8,
          child: InkWell(
            child: Icon(
              Icons.favorite_border,
              color: Colors.white,
              size: 26,
            ),
            onTap: () {},
          ),
        )
      ],
    );
  }
}
