import 'package:e_commerce_ui/components/default_button.dart';
import 'package:e_commerce_ui/screens/checkout/components/bill_information.dart';
import 'package:e_commerce_ui/screens/checkout/components/delivery_method.dart';
import 'package:e_commerce_ui/screens/checkout/components/payment_information.dart';
import 'package:e_commerce_ui/screens/checkout/components/shipping_address_information.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(20)),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ShippingAddressInformation(),
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),
            const PaymentInformation(),
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),
            const DeliveryMethod(),
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),
            BillInformation(),
            SizedBox(
              height: getProportionateScreenWidth(10),
            ),
            DefaultButton(text: "Summit order"),
          ],
        ),
      ),
    ));
  }
}
