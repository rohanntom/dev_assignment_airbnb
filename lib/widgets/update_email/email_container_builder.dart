import 'package:flutter/material.dart';

class EmailContainerBuilder extends StatelessWidget {
  const EmailContainerBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              labelText: 'Email',
            ),
          ),
        ],
      ),
    );
  }
}
