// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'email_container_builder.dart';

class UpdateEmail extends StatelessWidget {
  const UpdateEmail({Key? key}) : super(key: key);
  static const routeName = '/update-email';

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
            onPressed: () {
              Navigator.pop(context);
            },
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
          EmailContainerBuilder(),
          Spacer(),
          _divider(),
          _buttonContainer('Save'),
        ],
      ),
    );
  }

  Widget _buttonContainer(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 15),
      child: InkWell(
        child: Container(
          height: 55,
          width: 360,
          decoration: new BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(10)),
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
}
