import 'package:e_commerce_ui/models/Product.dart';
import 'package:e_commerce_ui/screens/rating_and_review/components/Body.dart';
import 'package:flutter/material.dart';

class RatingAndReview extends StatefulWidget {
  final ProductInfor productInfor;
  const RatingAndReview({Key? key, required this.productInfor})
      : super(key: key);

  @override
  _RatingAndReviewState createState() => _RatingAndReviewState();
}

class _RatingAndReviewState extends State<RatingAndReview> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 24,
          ),
        ),
      ),
      body: Body(
        productInfor: widget.productInfor,
      ),
    );
  }
}
