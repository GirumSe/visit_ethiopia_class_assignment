import 'package:flutter/material.dart';
import 'package:visit_ethiopia/models/comment_model.dart';
import 'package:visit_ethiopia/services/comment_service.dart';

class CommentsWidget extends StatefulWidget {
  final int hotspotId;

  const CommentsWidget({super.key, required this.hotspotId});

  @override
  _CommentsWidgetState createState() => _CommentsWidgetState();
}

class _CommentsWidgetState extends State<CommentsWidget> {
  List<Comment> comments = [];

  @override
  void initState() {
    super.initState();
    fetchComments();
  }

  Future<void> fetchComments() async {
    try {
      final List<Comment> fetchedComments =
      await CommentService.getCommentsByHotspotId(widget.hotspotId);
      setState(() {
        comments = fetchedComments;
      });
    } catch (e) {
      print('Failed to fetch comments: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    if (comments.isEmpty) {
      return const Text('No comments available.');
    }

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: comments.length,
      itemBuilder: (context, index) {
        final comment = comments[index];
        return ListTile(
          title: Text(comment.username),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(comment.comment),
              const SizedBox(height: 4),
              Text('Rating: ${comment.rating}'),
            ],
          ),
        );
      },
    );
  }
}
