import 'package:e_commerce_ui/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class DeliveryMethod extends StatefulWidget {
  const DeliveryMethod({Key? key}) : super(key: key);

  @override
  _DeliveryMethodState createState() => _DeliveryMethodState();
}

class _DeliveryMethodState extends State<DeliveryMethod> {
  List<String> listImage = [
    "assets/images/fedex.png",
    "assets/images/usps.png",
    "assets/images/dhl.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Delivery Method",
          style: TextStyle(
              fontSize: getProportionateScreenWidth(16),
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: getProportionateScreenWidth(20),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ...List.generate(
                3,
                (index) => Container(
                      height: getProportionateScreenWidth(72),
                      width: getProportionateScreenWidth(100),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.45),
                              offset: const Offset(2, 2),
                              blurRadius: 7.0),
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.45),
                              offset: const Offset(-2, -2),
                              blurRadius: 7.0),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: getProportionateScreenWidth(17),
                            width: getProportionateScreenWidth(82),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(listImage[index]))),
                          ),
                          SizedBox(
                            height: getProportionateScreenWidth(5),
                          ),
                          Text(
                            "2-3 days",
                            style: TextStyle(
                                fontSize: getProportionateScreenWidth(14),
                                color: kPrimarySecondColor),
                          )
                        ],
                      ),
                    ))
          ],
        )
      ],
    );
  }
}
