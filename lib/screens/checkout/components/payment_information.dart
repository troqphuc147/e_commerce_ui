import 'package:e_commerce_ui/models/user_profile.dart';
import 'package:e_commerce_ui/screens/user_payment_method/user_payment_method_screen.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class PaymentInformation extends StatefulWidget {
  const PaymentInformation({Key? key}) : super(key: key);

  @override
  _PaymentInformationState createState() => _PaymentInformationState();
}

class _PaymentInformationState extends State<PaymentInformation> {
  int paymentMethodIndex = 0;
  PaymentMethod paymentMethod = myProfile.paymentCardNumber[0];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Payment",
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(16),
                  fontWeight: FontWeight.w500),
            ),
            GestureDetector(
              onTap: () async {
                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => UserPaymentMethod(
                              index: paymentMethodIndex,
                            )));
                setState(() {
                  paymentMethod = myProfile.paymentCardNumber[paymentMethodIndex];
                });
              },
              child: Container(
                margin: EdgeInsets.only(right: getProportionateScreenWidth(20)),
                child: Text(
                  "Change",
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(14),
                      color: kPrimaryColor),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          width: getProportionateScreenWidth(10),
        ),
        Row(
          children: [
            Container(
              height: getProportionateScreenWidth(38),
              width: getProportionateScreenWidth(64),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(paymentMethodIndex == 0
                          ? "assets/images/mastercard.png"
                          : "assets/images/visalogo.png"))),
            ),
            SizedBox(
              width: getProportionateScreenWidth(10),
            ),
            Text(
              paymentMethod.cardNumber,
              style: TextStyle(fontSize: getProportionateScreenWidth(14)),
            )
          ],
        ),
      ],
    );
  }
}
