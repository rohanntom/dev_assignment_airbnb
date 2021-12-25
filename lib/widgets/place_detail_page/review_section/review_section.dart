import 'package:dev_assignment_airbnb/widgets/place_detail_page/review_section/review_builder.dart';
import 'package:flutter/material.dart';

class ReviewSection extends StatelessWidget {
  const ReviewSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ReviewBuilder(),
        _buttonContainer('Show all reviews'),
      ],
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
}
