import 'package:e_commerce_ui/models/user_profile.dart';
import 'package:e_commerce_ui/screens/order_detail/order_detail_screen.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../constants.dart';

class OrderCard extends StatelessWidget {
  final UserOrder userOrder;
  OrderCard({Key? key, required this.userOrder}) : super(key: key);
  late int totalPrice = 0;
  void createListPrice() {
    int price = 0;
    for (var each in userOrder.lisProduct) {
      price += each.totalPrice;
    }
    totalPrice = price;
  }

  @override
  Widget build(BuildContext context) {
    createListPrice();
    return Container(
      height: getProportionateScreenWidth(164),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.45),
              offset: const Offset(4, 4),
              blurRadius: 4,
            ),
            BoxShadow(
              color: Colors.grey.withOpacity(0.45),
              offset: const Offset(-4, -4),
              blurRadius: 4,
            ),
          ]),
      margin: EdgeInsets.only(
          top: getProportionateScreenWidth(20),
          right: getProportionateScreenWidth(5),
          left: getProportionateScreenWidth(5)),
      padding: EdgeInsets.all(getProportionateScreenWidth(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
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
                DateFormat("dd-MM-yyyy").format(userOrder.dateTime).toString(),
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
              )
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
                    "Quality:  ",
                    style: TextStyle(
                        color: kPrimarySecondColor,
                        fontSize: getProportionateScreenWidth(14)),
                  ),
                  Text(
                    userOrder.lisProduct.length.toString(),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(14),
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "Total Amount:  ",
                    style: TextStyle(
                        color: kPrimarySecondColor,
                        fontSize: getProportionateScreenWidth(14)),
                  ),
                  Text(
                    totalPrice.toString() + "\$",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(14),
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenWidth(10),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OrderDetailScreen(
                                userOrder: userOrder,
                                total: totalPrice,
                              )));
                },
                child: Container(
                  height: getProportionateScreenWidth(36),
                  width: getProportionateScreenWidth(98),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Center(
                    child: Text(
                      "Details",
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(14),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              Text(
                "Delivered",
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(14),
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff2AA952)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
