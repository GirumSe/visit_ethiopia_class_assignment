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

  Future<bool> postComment(
      String commentText, String user, int hotspotId) async {
    try {
      bool success = false;
      final response = await http.post(
        Uri.parse('$apiUrl?hotspotId=$hotspotId'),
        body: jsonEncode({
          'hotspotId': hotspotId,
          'user': user,
          'comment': commentText,
          // You can include additional parameters like user ID, rating, etc.
        }),
        headers: {'Content-Type': 'application/json'},
      );
      if (response.statusCode == 201) {
        // Comment posted successfully
        // You can handle the response or perform any additional actions if needed
        success = true;
        return success;
      } else {
        throw Exception('Failed to post comment');
      }
    } catch (e) {
      return false;
    }
  }
}
