import 'package:flutter/material.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'A very spacious private room with private entrance and balcony and a scenic view of coffee plantation. A natural stream nearby and a good park for kids and elders. The room is attached with a clean and big western style toilet with running hot and cold water round the clock. The room have a super king size cot and bed with cozy linen, LED television with satellite channels.',
            overflow: TextOverflow.ellipsis,
            maxLines: 6,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Show more >',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
