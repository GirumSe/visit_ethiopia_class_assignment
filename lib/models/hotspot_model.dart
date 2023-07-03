class TouristHotspot {
  final int id;
  final String name;
  final String category;
  final String description;
  final double latitude;
  final double longitude;
  final String imageUrl;
  final String rate;
  final String comments;

  TouristHotspot(
      {required this.id,
      required this.name,
      required this.category,
      required this.description,
      required this.latitude,
      required this.longitude,
      required this.imageUrl,
      required this.rate,
      required this.comments});
}
