// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Booking extends StatefulWidget {
  Booking({Key? key}) : super(key: key);

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  late ScrollController _scrollViewController;
  bool _showAppbar = true;
  bool isScrollingDown = false;

  @override
  void initState() {
    super.initState();
    _scrollViewController = new ScrollController();
    _scrollViewController.addListener(() {
      if (_scrollViewController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (!isScrollingDown) {
          isScrollingDown = true;
          _showAppbar = false;
          setState(() {});
        }
      }

      if (_scrollViewController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (isScrollingDown) {
          isScrollingDown = false;
          _showAppbar = true;
          setState(() {});
        }
      }
    });
  }

  @override
  void dispose() {
    _scrollViewController.dispose();
    _scrollViewController.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        //   leading: IconButton(
        //     icon: Icon(
        //       Icons.arrow_back,
        //       color: Colors.black,
        //     ),
        //     onPressed: () {},
        //   ),
        //   title: Text(
        //     'Confirm and pay',
        //     style: TextStyle(color: Colors.black),
        //   ),
        // ),
        body: SafeArea(
      child: Column(children: <Widget>[
        AnimatedContainer(
          height: _showAppbar ? 56.0 : 0.0,
          duration: Duration(milliseconds: 100),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 25,
              ),
              onPressed: () {},
            ),
            title: Text(
              'Confirm and pay',
              style: TextStyle(color: Colors.black, fontSize: 22),
            ),
          ),
        ),
        Expanded(
            child: SingleChildScrollView(
                controller: _scrollViewController,
                child: Column(children: <Widget>[
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                          child: _placeInfo(),
                        ),
                        _divider(),
                        _yourTrip(),
                        _divider(),
                        _priceDetail(),
                        _divider(),
                        _paymentDetail(),
                        _divider(),
                        _messageHost(),
                        _divider(),
                        _cancellationBuilder(),
                        _divider(),
                        _reservationBuilder(),
                        _divider(),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                          child: Column(
                            children: [
                              Text.rich(
                                TextSpan(
                                  text:
                                      'By selecting the button below, I agree to the ',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                  children: [
                                    TextSpan(
                                      text:
                                          'Host\'s House Rules, Airbnb\'s COVID-19 Safety Requirements and the Guest Refund Policy.',
                                      style: TextStyle(
                                          fontSize: 15,
                                          decoration: TextDecoration.underline,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                              _buttonContainer('Confirm and pay')
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ])))
      ]),
    ));
  }
}

Widget _reservationBuilder() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              Icons.calendar_today_outlined,
              color: Colors.pink,
              size: 28,
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              width: 320,
              child: Text.rich(
                TextSpan(
                  text:
                      'Your reservation won\'t be confirmed until the host accepts your request (within 24 hours).',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  children: [
                    TextSpan(
                      text: 'You won\'t be charged until then',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
      ],
    ),
  );
}

Widget _cancellationBuilder() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Cancellation policy",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Free cancellation for 48 hours. After that, cancel before 13:00 on 9 Jan and get a 50% refund, minus the service fee.',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        InkWell(
          child: Text(
            'Learn more',
            style: TextStyle(
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          onTap: () {},
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Our Extenuating Circumstances policy does not cover travel disruptions caused by COVID-19.',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        InkWell(
          child: Text(
            'Learn more',
            style: TextStyle(
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          onTap: () {},
        ),
      ],
    ),
  );
}

Widget _buttonContainer(String title) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 20, 0, 15),
    child: InkWell(
      child: Container(
        height: 45,
        width: 380,
        decoration: new BoxDecoration(
            // color: Colors.black,
            color: Colors.pink,
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ],
        ),
      ),
      onTap: () {},
    ),
  );
}

Widget _messageHost() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Message the host",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Let the host know why you\'re travelling and when you\'ll check in.',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://www.telegraph.co.uk/content/dam/Travel/hotels/asia/india/kerala/purity-cochin-bedroom.jpg',
                  ),
                  radius: 23,
                ),
                SizedBox(
                  width: 6,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Harry',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        'Joined in 2016',
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Container(
            height: 150,
            width: 400,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                TextField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Hi Harry! I\'ll be visiting . . .',
                )),
              ],
            )
            // Padding(
            //   padding: const EdgeInsets.all(15),
            //   child: Text(
            //     'Hi Harry! I\'ll be visiting . . .',
            //     style: TextStyle(
            //       fontSize: 18,
            //     ),
            //   ),
            // ),
            ),
      ],
    ),
  );
}

Widget _paymentDetail() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Pay with",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Icon(
              Icons.credit_card_rounded,
              size: 25,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              'Credit or Debit Card',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Spacer(),
            InkWell(
              child: Text(
                'Edit',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              onTap: () {},
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Divider(
          height: 20,
          thickness: 1,
          color: Colors.grey[300],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: InkWell(
            child: Text(
              'Enter a coupon',
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
            ),
            onTap: () {},
          ),
        ),
      ],
    ),
  );
}

Widget _priceDetail() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Price details",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        _pricePartition("\$34.99 x 2 nights", '\$69.98'),
        SizedBox(
          height: 10,
        ),
        _pricePartition("Weekly discount", '- \$9.99'),
        SizedBox(
          height: 10,
        ),
        _pricePartition("Service fee", '\$69.98'),
        SizedBox(
          height: 10,
        ),
        _pricePartition("Occupancy taxes and fees", '\$69.98'),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              'Total(USD)',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            Spacer(),
            Text(
              '\$69.98',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              child: Text(
                'More info',
                style: TextStyle(
                    decoration: TextDecoration.underline, fontSize: 18),
              ),
              onTap: () {},
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _yourTrip() {
  return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Your trip",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 20,
          ),
          _tripDetail('Dates', '25-26 Dec 2021'),
          SizedBox(
            height: 20,
          ),
          _tripDetail('Guests', '1 guest'),
        ],
      ));
}

Widget _pricePartition(String title, String detail) {
  return Row(
    children: [
      Text(
        title,
        style: TextStyle(color: Colors.grey[700], fontSize: 18),
      ),
      SizedBox(
        height: 10,
      ),
      Spacer(),
      (title == 'Weekly discount' && double.parse(detail[3]) > 0)
          ? Text(
              detail,
              style: TextStyle(color: Colors.green, fontSize: 18),
            )
          : Text(
              detail,
              style: TextStyle(color: Colors.grey[700], fontSize: 18),
            ),
    ],
  );
}

Widget _tripDetail(String title, String detail) {
  return Row(children: [
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          detail,
          style: TextStyle(color: Colors.grey[700], fontSize: 18),
        )
      ],
    ),
    Spacer(),
    InkWell(
      child: Text(
        'Edit',
        style: TextStyle(
            decoration: TextDecoration.underline,
            fontWeight: FontWeight.bold,
            fontSize: 18),
      ),
      onTap: () {},
    )
  ]);
}

Widget _divider() {
  return Divider(
    height: 20,
    thickness: 8,
    color: Colors.grey[300],
  );
}

Widget _placeInfo() {
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
                    children: [
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
