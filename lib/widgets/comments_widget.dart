import 'package:flutter/material.dart';
import 'package:visit_ethiopia/models/comment_model.dart';
import '/services/comment_service.dart';

class CommentsWidget extends StatefulWidget {
  final int hotspotId;
  final bool isLoggedIn;
  final CommentService commentService = CommentService();
  CommentsWidget({
    Key? key,
    required this.hotspotId,
    required this.isLoggedIn,
  }) : super(key: key);

  @override
  _CommentsWidgetState createState() => _CommentsWidgetState();
}

class _CommentsWidgetState extends State<CommentsWidget> {
  List<Comment> comments = [];
  final TextEditingController _commentController = TextEditingController();

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

  Future<void> postComment(
      String commentText, String user, int hotspotId) async {
    try {
      bool success =
          await widget.commentService.postComment(commentText, user, hotspotId);
      if (success) {
        // Comment posted successfully
        _commentController.clear();
        fetchComments(); // Fetch updated comments after posting
      } else {
        throw Exception('Failed to post comment');
      }
    } catch (e) {
      print('Failed to post comment: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    if (comments.isEmpty) {
      return const Text('No comments available.');
    }

    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
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
          ),
        ),
        if (widget.isLoggedIn)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _commentController,
                    decoration: const InputDecoration(
                      hintText: 'Add a comment...',
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () => postComment(
                      _commentController.text, 'user', widget.hotspotId),
                ),
              ],
            ),
          ),
      ],
    );
  }

  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }
}
