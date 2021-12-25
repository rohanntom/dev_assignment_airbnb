import 'package:flutter/material.dart';

import 'sections/cancellation_section.dart';
import 'sections/message_host_section.dart';
import 'sections/payment_section.dart';
import 'sections/place_info_section.dart';
import 'sections/price_detail_section.dart';
import 'sections/reservation_section.dart';
import 'sections/terms_and_conditions.dart';
import 'sections/your_trip_section.dart';

class BookingList extends StatelessWidget {
  const BookingList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: PlaceInfoSection(),
          ),
          _divider(),
          YourTripSection(),
          _divider(),
          PriceDetailSection(),
          _divider(),
          PaymentSection(),
          _divider(),
          MessageHostSection(),
          _divider(),
          CancellationSection(),
          _divider(),
          ReservationSection(),
          _divider(),
          TermsAndConditions(),
        ],
      ),
    );
  }
}

Widget _divider() {
  return Divider(
    height: 20,
    thickness: 8,
    color: Colors.grey[300],
  );
}
