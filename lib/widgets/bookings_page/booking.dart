import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'booking_list.dart';

class Booking extends StatefulWidget {
  Booking({Key? key}) : super(key: key);
  static const routeName = '/booking';

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
      body: SafeArea(
        child: Column(
          children: <Widget>[
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
                  onPressed: () {
                    Navigator.pop(context);
                  },
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
                child: Column(
                  children: const [
                    BookingList(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
