import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/models/Product.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class BillInformation extends StatelessWidget {
  BillInformation({Key? key}) : super(key: key);
  int total = 0;
  getTotal() {
    for (var e in listProductInBag) {
      total += e.totalPrice;
    }
  }

  @override
  Widget build(BuildContext context) {
    getTotal();
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Order: ",
              style: TextStyle(
                  color: kPrimarySecondColor,
                  fontSize: getProportionateScreenWidth(14)),
            ),
            Text(
              total.toString() + "\$",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: getProportionateScreenWidth(16)),
            ),
          ],
        ),
        SizedBox(
          height: getProportionateScreenWidth(10),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Delivery: ",
              style: TextStyle(
                  color: kPrimarySecondColor,
                  fontSize: getProportionateScreenWidth(14)),
            ),
            Text(
              15.toString() + "\$",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: getProportionateScreenWidth(16)),
            ),
          ],
        ),
        SizedBox(
          height: getProportionateScreenWidth(10),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Summary: ",
              style: TextStyle(
                  color: kPrimarySecondColor,
                  fontWeight: FontWeight.w600,
                  fontSize: getProportionateScreenWidth(16)),
            ),
            Text(
              (total + 15).toString() + "\$",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: getProportionateScreenWidth(16)),
            ),
          ],
        )
      ],
    );
  }
}
