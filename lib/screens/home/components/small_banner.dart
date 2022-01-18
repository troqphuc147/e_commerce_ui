import 'package:flutter/material.dart';

import '../../../size_config.dart';
class SmallBanner extends StatelessWidget {
  const SmallBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.screenWidth * 0.523,
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/Small banner.png"),
              fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            margin: EdgeInsets.only(
                bottom: getProportionateScreenWidth(26),
                left: getProportionateScreenWidth(20)),
            child:  Text(
              "Street clothes",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: getProportionateScreenWidth(34)),
            ),
          ),
        ],
      ),
    );
  }
}
