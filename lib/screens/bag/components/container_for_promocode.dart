import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/models/promo_code.dart';
import 'package:e_commerce_ui/screens/user_payment_method/components/promo_code_card.dart';
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
      onTap: () {
        show(context);
      },
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

  show(BuildContext context) {
    showModalBottomSheet<void>(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(builder: (context, setState) {
          return Container(
            height: getProportionateScreenWidth(500),
            decoration: const BoxDecoration(
                color: Color(0xfff5f4f4),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50))),
            child: ButtonTheme(
                height: getProportionateScreenWidth(500),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: getProportionateScreenWidth(14),
                      ),
                      Container(
                        width: getProportionateScreenWidth(60),
                        height: getProportionateScreenWidth(6),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: kPrimarySecondColor,
                        ),
                      ),
                      SizedBox(
                        height: getProportionateScreenWidth(30),
                      ),
                      Stack(
                        children: [
                          Positioned(
                              child: Container(
                            height: getProportionateScreenWidth(36),
                            width: getProportionateScreenWidth(330),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(7),
                                border: Border.all(
                                    color:
                                        kPrimarySecondColor.withOpacity(0.45))),
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
                      SizedBox(
                        height: getProportionateScreenWidth(30),
                      ),
                      Row(
                        children: [
                          Text(
                            "Your promo code",
                            style: TextStyle(
                                fontSize: getProportionateScreenWidth(18),
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: getProportionateScreenWidth(20),
                      ),
                      ...List.generate(
                          listPromoCodes.length,
                          (index) =>
                              PromoCodeCard(promoCode: listPromoCodes[index]))
                    ],
                  ),
                )),
          );
        });
      },
    );
  }
}
