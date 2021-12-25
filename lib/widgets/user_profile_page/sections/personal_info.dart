import 'package:flutter/material.dart';

import '../../edit_personal_info/edit_personal_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        children: [
          Row(
            children: const [
              Icon(
                Icons.person_outline,
                size: 29,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Personal information',
                style: TextStyle(fontSize: 16),
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                size: 16,
              )
            ],
          ),
        ],
      ),
      onTap: () {
        Navigator.of(context).pushNamed(EditPersonalInfo.routeName);
      },
    );
  }
}
