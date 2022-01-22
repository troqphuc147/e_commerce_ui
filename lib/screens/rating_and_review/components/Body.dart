import 'package:e_commerce_ui/models/Product.dart';
import 'package:e_commerce_ui/screens/rating_and_review/components/rating.dart';
import 'package:e_commerce_ui/size_config.dart';
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
    return SafeArea(
        child: Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            RatingView(productInfor: widget.productInfor,),
          ],
        ),
      ),
    ));
  }
}
