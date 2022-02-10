import 'package:e_commerce_ui/models/user_profile.dart';
import 'package:e_commerce_ui/screens/order_detail/componets/bottom.dart';
import 'package:e_commerce_ui/screens/order_detail/componets/item_cart.dart';
import 'package:e_commerce_ui/screens/order_detail/componets/order_information.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  final UserOrder userOrder;
  final int total;
  const Body({Key? key, required this.userOrder, required this.total}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Order N으" + userOrder.no,
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(16),
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    DateFormat("dd-MM-yyyy")
                        .format(userOrder.dateTime)
                        .toString(),
                    style: TextStyle(
                        color: kPrimarySecondColor,
                        fontSize: getProportionateScreenWidth(14)),
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateScreenWidth(10),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Tracking number:  ",
                        style: TextStyle(
                            color: kPrimarySecondColor,
                            fontSize: getProportionateScreenWidth(14)),
                      ),
                      Text(
                        userOrder.trackingNumber,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: getProportionateScreenWidth(14),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Delivered",
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(14),
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff2AA952)),
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateScreenWidth(20),
              ),
              Text(
                userOrder.lisProduct.length.toString() + " items",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(14),
                  fontWeight: FontWeight.w600,
                ),
              ),
              ...List.generate(userOrder.lisProduct.length,
                  (index) => ItemCart(productInBag: userOrder.lisProduct[index])),
              SizedBox(
                height: getProportionateScreenWidth(10),
              ),
              OrderInformation(userOrder: userOrder,total: total,),
              SizedBox(
                height: getProportionateScreenWidth(20),
              ),
              const BottomButton(),
              SizedBox(
                height: getProportionateScreenWidth(10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
