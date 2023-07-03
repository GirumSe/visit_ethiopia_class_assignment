import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:visit_ethiopia/models/comment_model.dart';

class CommentService {
  static const String apiUrl = 'https://example.com/api/comments';

  static Future<List<Comment>> getCommentsByHotspotId(int hotspotId) async {
    final response = await http.get(Uri.parse('$apiUrl?hotspotId=$hotspotId'));

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      return data.map((json) => Comment.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load comments');
    }
  }
}
