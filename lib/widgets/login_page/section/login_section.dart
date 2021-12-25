import 'package:flutter/material.dart';

class LoginSection extends StatelessWidget {
  const LoginSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            labelText: 'Email',
          ),
        ),
        SizedBox(
          height: 25,
        ),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            labelText: 'Password',
            suffixIcon: IconButton(
              icon: Icon(
                Icons.visibility,
                color: Colors.black87,
              ),
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}
