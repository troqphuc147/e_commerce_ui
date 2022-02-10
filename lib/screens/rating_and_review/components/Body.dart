import 'package:e_commerce_ui/models/Product.dart';
import 'package:e_commerce_ui/screens/rating_and_review/components/comment_view.dart';
import 'package:e_commerce_ui/screens/rating_and_review/components/rating_view.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  final ProductInfor productInfor;
  const Body({Key? key, required this.productInfor}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RatingView(
          productInfor: widget.productInfor,
        ),
        const CommentView(),
      ],
    );
  }
}
