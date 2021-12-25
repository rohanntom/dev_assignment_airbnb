import 'package:flutter/material.dart';

class NameSection extends StatelessWidget {
  TextEditingController firstNameController;
  TextEditingController lastNameController;

  NameSection({
    required this.firstNameController,
    required this.lastNameController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 120,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'First name',
                border: InputBorder.none,
              ),
              controller: firstNameController,
            ),
          ),
          Divider(
            height: 0,
            thickness: 1,
            color: Colors.grey,
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Last name',
                border: InputBorder.none,
              ),
              controller: lastNameController,
            ),
          ),
        ],
      ),
    );
  }
}
