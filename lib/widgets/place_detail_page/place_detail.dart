import 'package:flutter/material.dart';

import '../date_picker/date_picking_sheet.dart';
import 'review_section/review_section.dart';
import 'sections/amenity_section.dart';
import 'sections/bottom_container.dart';
import 'sections/description_section.dart';
import 'sections/feature_section.dart';
import 'sections/heading_section.dart';
import 'sections/host_detail_section.dart';
import 'sections/host_name_section.dart';
import 'sections/report_listing.dart';
import 'sections/where_you_will_sleep_section.dart';
import 'static/cancellation_policy.dart';
import 'static/health_and_safety.dart';
import 'static/house_rules.dart';

class PlaceDetail extends StatefulWidget {
  const PlaceDetail({Key? key}) : super(key: key);
  static const routeName = '/place-detail';

  @override
  State<PlaceDetail> createState() => _PlaceDetailState();
}

class _PlaceDetailState extends State<PlaceDetail> {
  DateTime? _startDate;
  DateTime? _endDate;
  // late ScrollController _scrollViewController;
  // bool _showAppbar = true;
  // bool isScrollingDown = false;

  // @override
  // void initState() {
  //   super.initState();
  //   _scrollViewController = new ScrollController();
  //   _scrollViewController.addListener(() {
  //     if (_scrollViewController.position.userScrollDirection ==
  //         ScrollDirection.reverse) {
  //       if (!isScrollingDown) {
  //         isScrollingDown = true;
  //         _showAppbar = false;
  //         setState(() {});
  //       }
  //     }

  //     if (_scrollViewController.position.userScrollDirection ==
  //         ScrollDirection.forward) {
  //       if (isScrollingDown) {
  //         isScrollingDown = false;
  //         _showAppbar = true;
  //         setState(() {});
  //       }
  //     }
  //   });
  // }

  // @override
  // void dispose() {
  //   _scrollViewController.dispose();
  //   _scrollViewController.removeListener(() {});
  //   super.dispose();
  // }

  Widget _divider() {
    return Divider(
      height: 20,
      thickness: 1,
      color: Colors.grey,
    );
  }

  Widget _sizedBox(double number) {
    return SizedBox(
      height: number,
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
                      HeadingSection(),
                      _sizedBox(15),
                      _divider(),
                      _sizedBox(20),
                      HostNameSection(),
                      _sizedBox(20),
                      _divider(),
                      _sizedBox(20),
                      FeaturesSection(),
                      _sizedBox(20),
                      _divider(),
                      _sizedBox(10),
                      DescriptionSection(),
                      _sizedBox(10),
                      _divider(),
                      _sizedBox(10),
                      _headlineWidget('Where you\'ll sleep'),
                      _sizedBox(10),
                      WhereYouWillSleepSection(),
                      _sizedBox(20),
                      _divider(),
                      _sizedBox(20),
                      _headlineWidget('What this place offers'),
                      _sizedBox(20),
                      AmenitySection(),
                      _divider(),
                      ReviewSection(),
                      _divider(),
                      HostDetailSection(),
                      _divider(),
                      _sizedBox(15),
                      _staticContainer(
                          'Availability',
                          // _startDate == null
                          //     ? 'Select date'
                          //     : '${_startDate}-${_endDate}',
                          '24-30 Dec 2021',
                          DatePickingSheet.routeName),
                      _sizedBox(15),
                      _divider(),
                      _sizedBox(15),
                      _staticContainer('House Rules', 'Check-in:Flexible',
                          HouseRules.routeName),
                      _sizedBox(15),
                      _divider(),
                      _sizedBox(15),
                      _staticContainer(
                          'Health & safety',
                          'Airbnb\'s social distancing and other COVID-19 related guidelines apply. Carbon monoxide alarm not reported ',
                          HealthAndSafety.routeName),
                      _sizedBox(15),
                      _divider(),
                      _sizedBox(15),
                      _staticContainer(
                          'Cancellation policy',
                          'Free cancellation before 23 Dec',
                          CancellationPolicy.routeName),
                      _sizedBox(15),
                      _divider(),
                      _sizedBox(15),
                      ReportListing(),
                      _sizedBox(70)
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        Positioned(
          child: BottomContainer(),
          bottom: 0,
        )
      ]),
    );
  }

  Widget _staticContainer(String title, String description, String route) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(route);
      },
      child: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  _sizedBox(10),
                  SizedBox(
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
        ),
        child: IconButton(
            icon: Icon(icon),
            color: Colors.black87,
            iconSize: 19,
            onPressed: () {
              icon == Icons.arrow_back ? Navigator.pop(context) : null;
            }),
      ),
    );
  }
}
