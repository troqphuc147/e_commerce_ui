import 'package:e_commerce_ui/components/new_product_cart.dart';
import 'package:e_commerce_ui/components/product_cart.dart';
import 'package:e_commerce_ui/models/Product.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class NewProduct extends StatelessWidget {
  const NewProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.screenWidth * 337 / 375,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "New",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(34),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                  padding:
                      EdgeInsets.only(right: getProportionateScreenWidth(20)),
                  child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        "View all",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(11),
                        ),
                      ))),
            ],
          ),
          Text(
            "You'll never seen it before!",
            style: TextStyle(
              color: kPrimarySecondColor,
              fontSize: getProportionateScreenWidth(11),
            ),
          ),
          SizedBox(
            height: getProportionateScreenWidth(12),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ...List.generate(
                        listNewProduct.length,
                        (index) => SizedBox(
                              height: SizeConfig.screenWidth * 260 / 375,
                              width: SizeConfig.screenWidth * 150 / 375,
                              child: NewProductCard(
                                product: listNewProduct[index],
                              ),
                            ))
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
