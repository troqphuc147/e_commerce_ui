import 'package:e_commerce_ui/components/product_cart.dart';
import 'package:e_commerce_ui/models/product.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class SaleProduct extends StatelessWidget {
  const SaleProduct({Key? key}) : super(key: key);

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
                "Sale",
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
                        'View all',
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(11),
                        ),
                      ))),
            ],
          ),
          Text(
            "Super summer sale",
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
                        listSaleProduct.length,
                        (index) => SizedBox(
                              height: SizeConfig.screenWidth * 260 / 375,
                              width: SizeConfig.screenWidth * 150 / 375,
                              child: ProductCard(
                                product: listSaleProduct[index],
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
