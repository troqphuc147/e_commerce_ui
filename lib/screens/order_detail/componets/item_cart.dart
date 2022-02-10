import 'package:e_commerce_ui/models/Product.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants.dart';

class ItemCart extends StatelessWidget {
  ProductInBag productInBag;
  ItemCart({Key? key, required this.productInBag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenWidth(104),
      width: double.infinity,
      margin: EdgeInsets.symmetric(
          vertical: getProportionateScreenWidth(10),
          horizontal: getProportionateScreenWidth(2)),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.45),
                offset: const Offset(2, 2),
                blurRadius: 4),
            BoxShadow(
                color: Colors.grey.withOpacity(0.45),
                offset: const Offset(-2, -2),
                blurRadius: 4),
          ]),
      child: Row(
        children: [
          Container(
            height: getProportionateScreenWidth(104),
            width: getProportionateScreenWidth(104),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  image: AssetImage(productInBag.image), fit: BoxFit.cover),
            ),
          ),
          Container(
            width: getProportionateScreenWidth(224),
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(11),
                vertical: getProportionateScreenWidth(11)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      productInBag.product.nameProduct,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: getProportionateScreenWidth(16),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenWidth(10),
                ),
                Text(
                  productInBag.product.nameShop,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(11),
                    color: kPrimarySecondColor,
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenWidth(8),
                ),
                Row(
                  children: [
                    Text(
                      "Color: ",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(11),
                        color: kPrimarySecondColor,
                      ),
                    ),
                    Text(
                      productInBag.color,
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(11),
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(30),
                    ),
                    Text(
                      "Size: ",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(11),
                        color: kPrimarySecondColor,
                      ),
                    ),
                    Text(
                      productInBag.size,
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(11),
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Units: ",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(11),
                            color: kPrimarySecondColor,
                          ),
                        ),
                        Text(
                          productInBag.amount.toString(),
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(11),
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      productInBag.totalPrice.toString() + "\$",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(11),
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
