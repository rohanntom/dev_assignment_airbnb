import 'package:dev_assignment_airbnb/widgets/listings_page/listing/listing.dart';

import 'package:flutter/material.dart';

class ListingsPage extends StatefulWidget {
  const ListingsPage({Key? key}) : super(key: key);
  static const routeName = '/place-list';

  @override
  State<ListingsPage> createState() => _ListingsPageState();
}

class _ListingsPageState extends State<ListingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavBar(),
      appBar: _Appbar(),
      body: ListView(
        children: const [
          Listing(),
          Listing(),
          Listing(),
          Listing(),
          Listing(),
        ],
      ),
    );
  }
}

class _Appbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
          size: 18,
        ),
        centerTitle: true,
        title: Container(
          alignment: Alignment.center,
          height: 40,
          width: 220,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.grey[300],
          ),
          child: Text(
            'Search',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 20,
            ),
          ),
        ),
        actions: const [
          Icon(
            Icons.filter_list_outlined,
            color: Colors.black,
          ),
        ]);
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}
