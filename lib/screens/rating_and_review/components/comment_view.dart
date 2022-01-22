import 'package:e_commerce_ui/models/Comment.dart';
import 'package:e_commerce_ui/screens/rating_and_review/components/comment_dialog.dart';
import 'package:flutter/material.dart';

class CommentView extends StatefulWidget {
  const CommentView({Key? key}) : super(key: key);

  @override
  _CommentViewState createState() => _CommentViewState();
}

class _CommentViewState extends State<CommentView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(
          listComments.length,
          (index) => CommentDialog(comment: listComments[index]),
        ),
      ],
    );
  }
}
