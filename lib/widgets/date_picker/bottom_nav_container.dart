import 'package:flutter/material.dart';

class BottomNavContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 430,
      height: 80,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: const [
                    Text(
                      '\$34.99',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      '/night',
                      style: TextStyle(fontSize: 18),
                    ),
                  ]),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.star,
                        size: 16,
                        color: Colors.pink,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('4.5')
                    ],
                  )
                ],
              ),
            ),
            Spacer(),
            InkWell(
              child: Container(
                decoration: new BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(6)),
                width: 150,
                height: 65,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    InkWell(
                      child: Text(
                        'Save',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
