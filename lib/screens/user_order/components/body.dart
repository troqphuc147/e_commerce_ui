import 'package:e_commerce_ui/models/user_profile.dart';
import 'package:e_commerce_ui/screens/user_order/components/header.dart';
import 'package:e_commerce_ui/screens/user_order/components/order_cart.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(20)),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "My order",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: getProportionateScreenWidth(34)),
            ),
            ListOrderCategoryChips(),
            ...List.generate(
                listOrder.length,
                (index) => OrderCard(
                      userOrder: listOrder[index],
                    ))
          ],
        ),
      ),
    );
  }
}
