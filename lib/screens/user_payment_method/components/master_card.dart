import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/models/user_profile.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class MasterCard extends StatelessWidget {
  const MasterCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenWidth(216),
      width: getProportionateScreenWidth(343),
      padding: EdgeInsets.all(getProportionateScreenWidth(30)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            image: AssetImage(
              myProfile.paymentCardNumber[0].image,
            ),
            fit: BoxFit.cover,
          )),
      child: Column(
        children: [
          SizedBox(
            height: getProportionateScreenWidth(15),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  height: getProportionateScreenWidth(24),
                  width: getProportionateScreenWidth(32),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/chip.png",
                        ),
                        fit: BoxFit.cover,
                      ))),
            ],
          ),
          SizedBox(
            height: getProportionateScreenWidth(20),
          ),
          Text(
            myProfile.paymentCardNumber[0].cardNumber,
            style: TextStyle(
                color: kBackgroundColor,
                fontWeight: FontWeight.w500,
                fontSize: getProportionateScreenWidth(24)),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    "Card Holder Name",
                    style: TextStyle(
                        color: kBackgroundColor,
                        fontWeight: FontWeight.w400,
                        fontSize: getProportionateScreenWidth(10)),
                  ),
                  Text(
                    myProfile.paymentCardNumber[0].nameOwn,
                    style: TextStyle(
                        color: kBackgroundColor,
                        fontWeight: FontWeight.w400,
                        fontSize: getProportionateScreenWidth(14)),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Expiry Date",
                    style: TextStyle(
                        color: kBackgroundColor,
                        fontWeight: FontWeight.w400,
                        fontSize: getProportionateScreenWidth(10)),
                  ),
                  Text(
                    myProfile.paymentCardNumber[0].dateExpiry,
                    style: TextStyle(
                        color: kBackgroundColor,
                        fontWeight: FontWeight.w400,
                        fontSize: getProportionateScreenWidth(14)),
                  ),
                ],
              ),
              Container(
                  height: getProportionateScreenWidth(24),
                  width: getProportionateScreenWidth(32),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/masterlogo.png",
                        ),
                        fit: BoxFit.cover,
                      ))),
            ],
          ),
          SizedBox(
            height: getProportionateScreenWidth(10),
          )
        ],
      ),
    );
  }
}
