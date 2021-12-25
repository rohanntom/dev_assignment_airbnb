import 'package:flutter/material.dart';

class PriceDetailSection extends StatelessWidget {
  const PriceDetailSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            children: const [
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
