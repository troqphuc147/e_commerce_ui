import 'package:e_commerce_ui/models/comment.dart';
import 'package:e_commerce_ui/screens/rating_and_review/components/comment_dialog.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommentView extends StatefulWidget {
  const CommentView({Key? key}) : super(key: key);

  @override
  _CommentViewState createState() => _CommentViewState();
}

class _CommentViewState extends State<CommentView> {
  bool onlyShowImageComment = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: getProportionateScreenWidth(20)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              listComments.length.toString() + " Reviews",
              style: TextStyle(
                color: Colors.black,
                fontSize: getProportionateScreenWidth(24),
                fontWeight: FontWeight.w600,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  onlyShowImageComment = !onlyShowImageComment;
                });
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  onlyShowImageComment
                      ? SvgPicture.asset("assets/icons/checkbox_off.svg")
                      : SvgPicture.asset("assets/icons/checkbox_on.svg"),
                  Text(
                    "  With photos",
                    style: TextStyle(fontSize: getProportionateScreenWidth(14)),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        ...List.generate(
          listComments.length,
          (index) => CommentDialog(comment: listComments[index]),
        ),
      ],
    );
  }
}
