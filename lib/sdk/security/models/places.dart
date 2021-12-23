import 'package:dev_assignment_airbnb/sdk/security/models/place.dart';

class Places {
  List<Place> list = [
    Place(
      id: 'p1',
      title: 'Hotel1',
      placeFeatures: ['Wifi', 'Mountain'],
      description: 'Lovely',
      reviews: ['great', 'good'],
      rating: 4.1,
      reviewNumber: 12,
      rate: 25,
      imageUrl: [
        'https://www.telegraph.co.uk/content/dam/Travel/hotels/asia/india/kerala/purity-cochin-bedroom.jpg',
        'http://www.deframesindia.com/wp-content/uploads/2017/01/Hotel-furniture-manufacturer-Ernakulam-Kerala-6.jpg',
      ],
      hostName: 'Harry',
      hostPhoto:
          'https://blogs-images.forbes.com/danschawbel/files/2017/12/Dan-Schawbel_avatar_1512422077-400x400.jpg',
      hostDetails: 'Person',
    ),
    Place(
      id: 'p2',
      title: 'Hotel2',
      placeFeatures: ['Wifi', 'Mountain'],
      description: 'Lovely',
      reviews: ['great', 'good'],
      rating: 4.1,
      reviewNumber: 23,
      rate: 25,
      imageUrl: [
        'https://assets.cntraveller.in/photos/60ba23e61fa22668f025a5c2/master/w_1600%2Cc_limit/Kerala-Forte-Kochi.jpg',
        'https://assets.cntraveller.in/photos/60ba23e5e341ff812178ebb3/master/w_1600%2Cc_limit/Kerala-Kumarakom-Lake-Resort.jpg',
      ],
      hostName: 'Potter',
      hostPhoto:
          'https://blogs-images.forbes.com/danschawbel/files/2017/12/Dan-Schawbel_avatar_1512422077-400x400.jpg',
      hostDetails: 'Person',
    ),
  ];
}
