import 'package:e_commerce_ui/models/Product.dart';
import 'package:e_commerce_ui/models/user_profile.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class OrderInformation extends StatelessWidget {
  final UserOrder userOrder;
  final int total;
  const OrderInformation({Key? key, required this.userOrder,required this.total}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Order Information",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(14),
            fontWeight: FontWeight.w600,
          ),
        ),
        Column(
          children: [
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Shipping Address: ",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(14),
                    color: kPrimarySecondColor,
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: getProportionateScreenWidth(215),
                  child: Wrap(
                    children: [
                      Text(
                        userOrder.shippingAddress,
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(14),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Payment method: ",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(14),
                    color: kPrimarySecondColor,
                  ),
                ),
                const Spacer(),
                Container(
                  height: getProportionateScreenWidth(25),
                  width: getProportionateScreenWidth(32),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/mastercard.png"),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(180),
                  child: Wrap(
                    children: [
                      Text(
                        "  " + userOrder.paymentMethod,
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(14),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Delivery method: ",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(14),
                    color: kPrimarySecondColor,
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: getProportionateScreenWidth(215),
                  child: Wrap(
                    children: [
                      Text(
                        userOrder.deliveryMethod,
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(14),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Discount: ",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(14),
                    color: kPrimarySecondColor,
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: getProportionateScreenWidth(215),
                  child: Wrap(
                    children: [
                      Text(
                        userOrder.discount,
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(14),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Total amount: ",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(14),
                    color: kPrimarySecondColor,
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: getProportionateScreenWidth(215),
                  child: Wrap(
                    children: [
                      Text(
                        total.toString() + "\$",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(14),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
