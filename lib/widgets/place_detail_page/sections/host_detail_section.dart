import 'package:flutter/material.dart';

import 'disclaimer_section.dart';

class HostDetailSection extends StatelessWidget {
  const HostDetailSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 240,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Hosted by Harry',
                      style: TextStyle(fontSize: 24),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Joined in March 2018',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Spacer(),
              CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://www.telegraph.co.uk/content/dam/Travel/hotels/asia/india/kerala/purity-cochin-bedroom.jpg',
                ),
                radius: 25,
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  children: const [
                    Icon(
                      Icons.star,
                      color: Colors.pink,
                      size: 30,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '35 Reviews',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  children: const [
                    Icon(
                      Icons.verified_user,
                      color: Colors.pink,
                      size: 30,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Identity verified',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Software engineer by profession and a host by passion. I like meeting new people, interested to see and experience different culture across geographies. So far, every guest booking has given me a different experience and learnings...happy to be a host :)',
            style: TextStyle(fontSize: 16),
          ),
          _hostDetailBuilder('During your stay',
              'Guests can reach to me anytime on 9620****** phone and WhatsApp. My brother stays just beside and he is also approachable.'),
          _hostDetailBuilder('Harry the Superhost',
              'Superhosts are experienced, highly rated hosts who are committed to providing great stays for guests.'),
          SizedBox(
            height: 15,
          ),
          Text(
            'Languages: English, Hindi',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'Response rate: 100%',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'Response time: within an hour',
            style: TextStyle(fontSize: 16),
          ),
          _buttonContainer('Contact host'),
          SizedBox(
            height: 10,
          ),
          DisclaimerSection(),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Widget _hostDetailBuilder(String title, String content) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            content,
            style: TextStyle(fontSize: 16),
          ),
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
          width: 360,
          decoration: new BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        onTap: () {},
      ),
    );
  }
}
