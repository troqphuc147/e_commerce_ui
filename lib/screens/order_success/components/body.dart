import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: getProportionateScreenWidth(213),
              width: getProportionateScreenWidth(208),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                "assets/images/bags.png",
              ))),
            ),
          ),
          SizedBox(
            height: getProportionateScreenWidth(20),
          ),
          Text(
            "Success!",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: getProportionateScreenWidth(34),
            ),
          ),
          SizedBox(
            height: getProportionateScreenWidth(20),
          ),
          Text(
            "Your order will be delivered soon.",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: getProportionateScreenWidth(14),
            ),
          ),
          SizedBox(
            height: getProportionateScreenWidth(10),
          ),
          Text(
            "Thank you for choosing our app!",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: getProportionateScreenWidth(14),
            ),
          ),
          SizedBox(
            height: getProportionateScreenWidth(40),
          ),
        ],
      ),
    );
  }
}
