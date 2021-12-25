import 'package:flutter/material.dart';

class TermsAndConditionsSection extends StatelessWidget {
  const TermsAndConditionsSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: 'By selecting Agree and continue, I agree to Airbnb\'s ',
        style: TextStyle(
          fontSize: 16,
        ),
        children: const [
          TextSpan(
            text: 'Terms of Service',
            style: TextStyle(
                fontSize: 16,
                decoration: TextDecoration.underline,
                color: Colors.blue,
                fontWeight: FontWeight.bold),
          ),
          TextSpan(text: ', '),
          TextSpan(
            text: 'Payments Terms of Service',
            style: TextStyle(
                fontSize: 16,
                decoration: TextDecoration.underline,
                color: Colors.blue,
                fontWeight: FontWeight.bold),
          ),
          TextSpan(text: ' and '),
          TextSpan(
            text: 'Nondiscrimination Policy',
            style: TextStyle(
                fontSize: 16,
                decoration: TextDecoration.underline,
                color: Colors.blue,
                fontWeight: FontWeight.bold),
          ),
          TextSpan(text: ' and acknowledge the '),
          TextSpan(
            text: 'Privacy Policy',
            style: TextStyle(
                fontSize: 16,
                decoration: TextDecoration.underline,
                color: Colors.blue,
                fontWeight: FontWeight.bold),
          ),
          TextSpan(text: '.'),
        ],
      ),
    );
  }
}
