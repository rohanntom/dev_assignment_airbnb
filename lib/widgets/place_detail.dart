// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../sdk/icons.dart';

class PlaceDetail extends StatelessWidget {
  const PlaceDetail({Key? key}) : super(key: key);

  Widget _divider() {
    return Divider(
      height: 20,
      thickness: 1,
      color: Colors.grey,
    );
  }

  void placeDescriptionSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return GestureDetector(
          //onVerticalDragDown:(){},
          child: Column(
            children: [Text('About this space')],
          ),
          behavior: HitTestBehavior.opaque,
        );
      },
    );
  }

  Widget _sizedBox(double number) {
    return SizedBox(
      height: number,
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
                  Text(description,
                      style: TextStyle(
                        fontSize: 15,
                      )),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _propertyTitle() {
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
                  '4.5 ',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                Text(
                  '(35 reviews)',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ],
            ),
            Row(
              children: const [
                Text(
                  '.',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ],
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

  Widget _hostName() {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 240,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hosted by Harry',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              _sizedBox(20),
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

  Widget _propertyDescription() {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'A very spacious private room with private entrance and balcony and a scenic view of coffee plantation. A natural stream nearby and a good park for kids and elders. The room is attached with a clean and big western style toilet with running hot and cold water round the clock. The room have a super king size cot and bed with cozy linen, LED television with satellite channels.',
            overflow: TextOverflow.ellipsis,
            maxLines: 6,
            style: TextStyle(fontSize: 16),
          ),
          _sizedBox(10),
          InkWell(
            child: Container(
              child: Text(
                'Show more >',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            onTap: () => placeDescriptionSheet,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        ListView(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Image.network(
                      'https://www.telegraph.co.uk/content/dam/Travel/hotels/asia/india/kerala/purity-cochin-bedroom.jpg',
                      fit: BoxFit.contain,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(children: [
                        topIconWidget(Icons.arrow_back),
                        Spacer(),
                        topIconWidget(Icons.ios_share),
                        topIconWidget(Icons.favorite_border_outlined),
                      ]),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      _propertyTitle(),
                      _sizedBox(10),
                      _divider(),
                      _sizedBox(13),
                      _hostName(),
                      _sizedBox(20),
                      _divider(),
                      _sizedBox(20),
                      _featureSets(Icons.star_half_outlined, 'Enhanced Clean',
                          'This host has committed to Airbnb\'s 5 step enhanced cleaning process. '),
                      _sizedBox(20),
                      _featureSets(Icons.door_back_door, 'Self check-in',
                          'You can check in with  the doorperson. '),
                      _sizedBox(20),
                      _featureSets(Icons.wifi, 'Wifi',
                          'Guests often search for this popular amenity. '),
                      _sizedBox(20),
                      _divider(),
                      _sizedBox(10),
                      _propertyDescription(),
                      _sizedBox(10),
                      _divider(),
                      _sizedBox(10),
                      _headlineWidget('Where you\'ll sleep'),
                      _sizedBox(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 130,
                            width: 350,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  _horizontalContainer('Bedroom 1'),
                                  _horizontalContainer('Bedroom 2'),
                                  _horizontalContainer('Bedroom 3'),
                                  _horizontalContainer('Bedroom 4'),
                                  _horizontalContainer('Bedroom 5'),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      _sizedBox(10),
                      _divider(),
                      _sizedBox(20),
                      _headlineWidget('What this place offers'),
                      _sizedBox(20),
                      Column(
                        children: [
                          _amenityBuilder(Icons.car_rental_outlined,
                              'Free parking on premises'),
                          _amenityBuilder(Icons.calendar_today_outlined,
                              'Long-term stays allowed'),
                          _amenityBuilder(Icons.door_back_door_outlined,
                              'Private entrance'),
                          _amenityBuilder(Icons.tv_outlined, 'Television'),
                          _amenityBuilder(Icons.pets_rounded, 'Pets allowed'),
                          _buttonContainer('Show all amenities'),
                        ],
                      ),
                      _divider(),
                      Column(
                        children: [
                          _reviewBuilder(),
                          _buttonContainer('Show all reviews'),
                        ],
                      ),
                      _divider(),
                      _hostDetails(),
                      _divider(),
                      _sizedBox(15),
                      _staticContainer('Availability', '24-26 Dec 2021'),
                      _sizedBox(15),
                      _divider(),
                      _sizedBox(15),
                      _staticContainer('House Rules', 'Check-in:Flexible'),
                      _sizedBox(15),
                      _divider(),
                      _sizedBox(15),
                      _staticContainer('Health & safety',
                          'Airbnb\'s social distancing and other COVID-19 related guidelines apply. Carbon monoxide alarm not reported '),
                      _sizedBox(15),
                      _divider(),
                      _sizedBox(15),
                      _staticContainer('Cancellation policy',
                          'Free cancellation before 23 Dec'),
                      _sizedBox(15),
                      _divider(),
                      _sizedBox(15),
                      Row(
                        children: [
                          Icon(Icons.flag),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              'Report this listing',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.grey,
                                  fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 80,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        Positioned(
          child: _bottomNavBar(),
          bottom: 0,
        )
      ]),
    );
  }

  Widget _bottomNavBar() {
    return Container(
      width: 430,
      height: 80,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(children: [
                Row(children: [
                  Text(
                    '\$34.99',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    '/night',
                    style: TextStyle(fontSize: 18),
                  ),
                ]),
                Text(
                  '24 Dec-26 Dec',
                  style: TextStyle(
                      fontSize: 16, decoration: TextDecoration.underline),
                )
              ]),
            ),
            Spacer(),
            InkWell(
              child: Container(
                decoration: new BoxDecoration(
                    color: Colors.pink, borderRadius: BorderRadius.circular(6)),
                width: 150,
                height: 65,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Reserve',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _staticContainer(String title, String description) {
    return InkWell(
      onTap: () {},
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                    _sizedBox(10),
                    Container(
                      width: 280,
                      child: Text(
                        description,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _hostDetails() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 240,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hosted by Harry',
                      style: TextStyle(fontSize: 24),
                    ),
                    _sizedBox(5),
                    Text(
                      'Joined in March 2018',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
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
          ),
          _sizedBox(15),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.pink,
                      size: 30,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '35 Reviews',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.verified_user,
                      color: Colors.pink,
                      size: 30,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Identity verified',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
          _sizedBox(15),
          Text(
            'Software engineer by profession and a host by passion. I like meeting new people, interested to see and experience different culture across geographies. So far, every guest booking has given me a different experience and learnings...happy to be a host :)',
            style: TextStyle(fontSize: 16),
          ),
          _hostDetailBuilder('During your stay',
              'Guests can reach to me anytime on 9620****** phone and WhatsApp. My brother stays just beside and he is also approachable.'),
          _hostDetailBuilder('Harry the Superhost',
              'Superhosts are experienced, highly rated hosts who are committed to providing great stays for guests.'),
          _sizedBox(15),
          Text(
            'Languages: English, Hindi',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'Response rate: 100%',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'Response time: within an hour',
            style: TextStyle(fontSize: 16),
          ),
          _buttonContainer('Contact host'),
          _sizedBox(10),
          _disclaimer(),
          _sizedBox(10),
        ],
      ),
    );
  }

  Widget _disclaimer() {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 280,
              child: Text(
                'To protect your payment, never transfer money or communicate outside of the Airbnb website or app.',
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
            ),
            Spacer(),
            Icon(
              MyFlutterApp.airbnb,
              size: 20,
            ),
          ],
        )
      ],
    );
  }

  Widget _hostDetailBuilder(String title, String content) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
          _sizedBox(10),
          Text(
            content,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }

  Widget _reviewBuilder() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
          child: Row(
            children: [
              Icon(
                Icons.star,
                size: 24,
                color: Colors.pink,
              ),
              Text(
                ' 4.5',
                style: TextStyle(fontSize: 24),
              ),
              Text(
                ' .',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              Text(
                ' 35 reviews',
                style: TextStyle(fontSize: 24),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(top: 25, bottom: 20),
            child: Row(
              children: [
                _reviewContainer(),
                SizedBox(
                  width: 10,
                ),
                _reviewContainer(),
                SizedBox(
                  width: 10,
                ),
                _reviewContainer(),
                SizedBox(
                  width: 10,
                ),
                _reviewContainer(),
                SizedBox(
                  width: 10,
                ),
                _reviewContainer(),
                SizedBox(
                  width: 10,
                ),
                _emptyReviewContainer(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _emptyReviewContainer() {
    return Container(
      height: 220,
      width: 240,
      decoration: new BoxDecoration(
          // color: Colors.black,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {},
            child: Text(
              'Show all reviews',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _reviewContainer() {
    return Container(
      height: 220,
      width: 250,
      decoration: new BoxDecoration(
          // color: Colors.black,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://www.telegraph.co.uk/content/dam/Travel/hotels/asia/india/kerala/purity-cochin-bedroom.jpg',
                  ),
                  radius: 22,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Karthik',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        '1 year ago',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 15),
                  child: Text(
                    'It is a great place to stay closest to the nature in wild. The bedroom was fantastic. We had very good sleep. The food and other services were great too. We had very comfortable stay!',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 5,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'read more',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buttonContainer(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 15),
      child: InkWell(
        child: Container(
          height: 45,
          width: 360,
          decoration: new BoxDecoration(
              // color: Colors.black,
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
        onTap: () {},
      ),
    );
  }

  Widget _headlineWidget(String title) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ],
    );
  }

  Widget topIconWidget(IconData icon) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 37,
        width: 37,
        decoration: new BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          //borderRadius: BorderRadius.circular(20)
        ),
        child: IconButton(
            icon: Icon(icon),
            color: Colors.black87,
            iconSize: 19,
            onPressed: () {}),
      ),
    );
  }

  Widget _horizontalContainer(String title) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
          child: Container(
            height: 120,
            width: 130,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.king_bed_outlined,
                    size: 35,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    title,
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    '1 double bed',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              border: Border.all(width: 1.0, color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
          ),
        )
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
}
