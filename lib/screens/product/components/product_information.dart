import 'package:e_commerce_ui/components/default_button_2.dart';
import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/models/Product.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductInformation extends StatefulWidget {
  final ProductInfor productInfor;
  const ProductInformation({Key? key, required this.productInfor})
      : super(key: key);

  @override
  _ProductInformationState createState() => _ProductInformationState();
}

class _ProductInformationState extends State<ProductInformation> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.productInfor.product.nameShop,
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(24),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.productInfor.product.nameProduct,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(11),
                    color: kPrimarySecondColor,
                  ),
                )
              ],
            ),
            Text(
              "\$" + widget.productInfor.product.price.toDouble().toString(),
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(24),
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        SizedBox(
          height: getProportionateScreenWidth(5),
        ),
        Row(
          children: [
            RatingBar(
              initialRating: widget.productInfor.product.getRating(),
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: getProportionateScreenHeight(16),
              ratingWidget: RatingWidget(
                  full: const Icon(
                    Icons.star,
                    color: Color(0xffFFBA49),
                  ),
                  half: const Icon(
                    Icons.star_half,
                    color: Color(0xffFFBA49),
                  ),
                  empty: const Icon(
                    Icons.star_outline,
                    color: Color(0xffFFBA49),
                  )),
              onRatingUpdate: (value) {},
            ),
            Text(
              " (" +
                  widget.productInfor.product.rating.length
                      .toString() +
                  ")",
              style: TextStyle(
                  color: kPrimarySecondColor,
                  fontSize: getProportionateScreenHeight(11)),
            )
          ],
        ),
        SizedBox(
          height: getProportionateScreenWidth(20),
        ),
        SizedBox(
          height: getProportionateScreenWidth(80),
          child: Column(
            children: [
              Flexible(
                child: Text(
                  widget.productInfor.product.script,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(14),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
