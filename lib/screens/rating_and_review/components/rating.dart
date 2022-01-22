import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/models/Product.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class RatingView extends StatefulWidget {
  final ProductInfor productInfor;
  const RatingView({Key? key, required this.productInfor}) : super(key: key);

  @override
  _RatingViewState createState() => _RatingViewState();
}

class _RatingViewState extends State<RatingView> {
  List<int> numRate = [];
  void getIndexOfRating() {
    for (int i = 0; i < 5; i++) {
      numRate.add(0);
    }
    // for(int i=0; i < )
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getIndexOfRating();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Rating&Reviews",
          style: TextStyle(
              color: Colors.black,
              fontSize: getProportionateScreenWidth(34),
              fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: getProportionateScreenWidth(20),
        ),
        Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  (widget.productInfor.product.getRating() / 2).toStringAsFixed(1),
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(44),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  widget.productInfor.product.rating.length.toString() +
                      " ratings",
                  style: TextStyle(
                    color: kPrimarySecondColor,
                    fontSize: getProportionateScreenWidth(14),
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    ...List.generate(
                      5,
                      (index) => Icon(
                        Icons.star,
                        color: const Color(0xffFFBA49),
                        size: getProportionateScreenWidth(14),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
