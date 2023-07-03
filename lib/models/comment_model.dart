class Comment {
  final int id;
  final String username;
  final String comment;
  final double rating;

  Comment({
    required this.id,
    required this.username,
    required this.comment,
    required this.rating,
  });

  factory Comment.fromJson(Map<String, dynamic> json) {
    return Comment(
      id: json['id'] as int,
      username: json['username'] as String,
      comment: json['comment'] as String,
      rating: json['rating'] as double,
    );
  }
}
