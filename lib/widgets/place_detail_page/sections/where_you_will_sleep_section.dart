import 'package:flutter/material.dart';

class WhereYouWillSleepSection extends StatelessWidget {
  const WhereYouWillSleepSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 130,
          width: 350,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _horizontalContainer('Bedroom 1'),
                _horizontalContainer('Bedroom 2'),
                _horizontalContainer('Bedroom 3'),
                _horizontalContainer('Bedroom 4'),
                _horizontalContainer('Bedroom 5'),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _horizontalContainer(String title) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
          child: Container(
            height: 120,
            width: 130,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.king_bed_outlined,
                    size: 35,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    title,
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    '1 double bed',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              border: Border.all(width: 1.0, color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
          ),
        )
      ],
    );
  }
}
