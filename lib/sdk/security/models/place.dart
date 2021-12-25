class Place {
  final String id;
  final String title;
  final List<String> placeFeatures;
  final String description;
  final List<String> reviews;
  final int reviewNumber;
  final double rating;
  final double rate;
  final List<String> imageUrl;
  final String hostName;
  final String hostPhoto;
  final String hostDetails;
  // bool isFavorite;

  Place(
      {required this.id,
      required this.title,
      required this.placeFeatures,
      required this.description,
      required this.reviews,
      required this.reviewNumber,
      required this.rating,
      required this.rate,
      required this.imageUrl,
      required this.hostName,
      required this.hostPhoto,
      required this.hostDetails
      //{this.isFavorite = false}
      });
}
