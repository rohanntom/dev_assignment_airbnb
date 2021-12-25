import 'package:flutter/material.dart';

class ReservationSection extends StatelessWidget {
  const ReservationSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    children: const [
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
}
