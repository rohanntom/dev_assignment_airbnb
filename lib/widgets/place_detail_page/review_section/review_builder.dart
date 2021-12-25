import 'package:dev_assignment_airbnb/widgets/place_detail_page/review_section/review_container.dart';
import 'package:flutter/material.dart';

class ReviewBuilder extends StatelessWidget {
  const ReviewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
          child: Row(
            children: const [
              Icon(
                Icons.star,
                size: 24,
                color: Colors.pink,
              ),
              Text(
                ' 4.5 ',
                style: TextStyle(fontSize: 24),
              ),
              Icon(
                Icons.circle,
                size: 6,
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
                ReviewContainer(),
                SizedBox(
                  width: 10,
                ),
                ReviewContainer(),
                SizedBox(
                  width: 10,
                ),
                ReviewContainer(),
                SizedBox(
                  width: 10,
                ),
                ReviewContainer(),
                SizedBox(
                  width: 10,
                ),
                ReviewContainer(),
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
}
