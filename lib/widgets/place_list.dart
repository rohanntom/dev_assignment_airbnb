// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../sdk/icons.dart';

class PlaceList extends StatefulWidget {
  const PlaceList({Key? key}) : super(key: key);

  @override
  State<PlaceList> createState() => _PlaceListState();
}

class _PlaceListState extends State<PlaceList> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget bottomNavBuilder() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            MyFlutterApp.search,
            size: 23,
          ),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            MyFlutterApp.heart,
            size: 24,
          ),
          label: 'Wishlists',
        ),
        BottomNavigationBarItem(
            icon: Icon(
              MyFlutterApp.airbnb,
              size: 24,
            ),
            label: 'Trips'),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.messenger_outline_rounded,
            size: 24,
          ),
          label: 'Inbox',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.account_circle_outlined,
            size: 24,
          ),
          label: 'Profile',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.pink,
      unselectedItemColor: Colors.grey,
      onTap: _onItemTapped,
    );
  }

  Widget listView() {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {},
            // child: Padding(
            //   padding: const EdgeInsets.all(20.0),
            child: Stack(
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                        size: 26,
                      ),
                      onTap: () {},
                    ),
                  ),
                )
              ],
            ),
          ),
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
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                children: [
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
    );
  }

  Widget buildBar() {
    return AppBar(centerTitle: true, title: Text('search'), actions: <Widget>[
      Icon(
        Icons.search,
        color: Colors.white,
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavBuilder(),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 18,
          ),
          centerTitle: true,
          title: Container(
            height: 40,
            width: 220,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey[300]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Search',
                  style: TextStyle(color: Colors.black54, fontSize: 20),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            Icon(
              Icons.filter_list_outlined,
              color: Colors.black,
            ),
          ]),
      // AppBar(
      //   backgroundColor: Colors.white,
      //   leading: IconButton(
      //     icon: Icon(
      //       Icons.arrow_back,
      //       color: Colors.grey,
      //     ),
      //     onPressed: () {},
      //   ),
      // ),
      body: ListView(
        children: [
          listView(),
          listView(),
          listView(),
          listView(),
        ],
      ),
    );
  }
}
