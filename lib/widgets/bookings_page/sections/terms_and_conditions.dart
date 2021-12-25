import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
      child: Column(
        children: [
          Text.rich(
            TextSpan(
              text: 'By selecting the button below, I agree to the ',
              style: TextStyle(
                fontSize: 15,
              ),
              children: const [
                TextSpan(
                  text:
                      'Host\'s House Rules, Airbnb\'s COVID-19 Safety Requirements and the Guest Refund Policy.',
                  style: TextStyle(
                      fontSize: 15,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          _buttonContainer('Confirm and pay')
        ],
      ),
    );
  }

  Widget _buttonContainer(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 15),
      child: InkWell(
        child: Container(
          height: 45,
          width: 380,
          decoration: new BoxDecoration(
              // color: Colors.black,
              color: Colors.pink,
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: 19,
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
}
