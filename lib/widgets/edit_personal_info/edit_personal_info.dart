import 'package:flutter/material.dart';

import 'sections/personal_info_builder.dart';

class EditPersonalInfo extends StatefulWidget {
  EditPersonalInfo({Key? key}) : super(key: key);
  static const routeName = '/edit-personal-info';

  @override
  State<EditPersonalInfo> createState() => _EditPersonalInfoState();
}

class _EditPersonalInfoState extends State<EditPersonalInfo> {
  //final _email = TextEditingController();
  //late DateTime _selectedDate;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white10,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 18,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Row(
          children: [
            Spacer(),
            InkWell(
              child: Text(
                'Save',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Edit personal info',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 25, 15, 15),
                child: Form(
                  key: formKey,
                  child: PersonalInfoBuilder(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
