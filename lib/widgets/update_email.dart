// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class UpdateEmail extends StatelessWidget {
  const UpdateEmail({Key? key}) : super(key: key);

  Widget _buttonContainer(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 15),
      child: InkWell(
        child: Container(
          height: 55,
          width: 360,
          decoration: new BoxDecoration(
              color: Colors.black,
              //border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ],
          ),
        ),
        onTap: () {},
      ),
    );
  }

  Widget _divider() {
    return Divider(
      thickness: 1,
      color: Colors.grey[300],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white12,
          leading: IconButton(
            icon: Icon(
              Icons.close,
              color: Colors.black,
              size: 20,
            ),
            onPressed: () {},
          ),
          titleSpacing: 90,
          title: Text(
            'Update email',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w800),
          )),
      body: Column(
        children: [
          _divider(),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 30, 25, 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'We\'ll send you an email to confirm your new email address.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Email',
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          _divider(),
          _buttonContainer('Save'),
        ],
      ),
    );
  }
}
