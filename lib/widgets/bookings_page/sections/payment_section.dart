import 'package:flutter/material.dart';

class PaymentSection extends StatelessWidget {
  const PaymentSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Pay with",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Icon(
                Icons.credit_card_rounded,
                size: 25,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'Credit or Debit Card',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Spacer(),
              InkWell(
                child: Text(
                  'Edit',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                onTap: () {},
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            height: 20,
            thickness: 1,
            color: Colors.grey[300],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: InkWell(
              child: Text(
                'Enter a coupon',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
              ),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
