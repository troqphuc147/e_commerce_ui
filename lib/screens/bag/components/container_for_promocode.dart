import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class ContainerPromoCode extends StatefulWidget {
  const ContainerPromoCode({Key? key}) : super(key: key);

  @override
  _ContainerPromoCodeState createState() => _ContainerPromoCodeState();
}

class _ContainerPromoCodeState extends State<ContainerPromoCode> {
  String promoCode = "Enter your promo code";
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        height: getProportionateScreenWidth(36),
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
                child: Container(
              height: getProportionateScreenWidth(36),
              width: getProportionateScreenWidth(330),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                  border:
                      Border.all(color: kPrimarySecondColor.withOpacity(0.45))),
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: Row(
                children: [
                  Text(
                    promoCode,
                    style: TextStyle(
                      color: promoCode == "Enter your promo code"
                          ? kPrimarySecondColor
                          : Colors.black,
                    ),
                  ),
                ],
              ),
            )),
            Positioned(
              right: 0,
                child: Container(
                    height: getProportionateScreenWidth(36),
                    width: getProportionateScreenWidth(36),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(50)),
                    child: Icon(
                      Icons.arrow_forward,
                      size: getProportionateScreenWidth(24),
                      color: Colors.white,
                    ))),
          ],
        ),
      ),
    );
  }
}
