import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/models/promo_code.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class PromoCodeCard extends StatefulWidget {
  final PromoCode promoCode;
  const PromoCodeCard({Key? key, required this.promoCode}) : super(key: key);

  @override
  State<PromoCodeCard> createState() => _PromoCodeCardState();
}

class _PromoCodeCardState extends State<PromoCodeCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenWidth(80),
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: getProportionateScreenWidth(10)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            height: getProportionateScreenWidth(80),
            width: getProportionateScreenWidth(80),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.promoCode.image),
                    fit: BoxFit.cover)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.promoCode.salePercent.toString(),
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(34),
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "%",
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(14),
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "off",
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(14),
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
            width: getProportionateScreenWidth(215),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.promoCode.nameCode,
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(14),
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: getProportionateScreenWidth(5),
                    ),
                    Text(
                      widget.promoCode.code,
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(11),
                          color: Colors.black),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      widget.promoCode.dateTime.toString() + " days remaining",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(11),
                        color: kPrimarySecondColor,
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenWidth(5),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: getProportionateScreenWidth(36),
                        width: getProportionateScreenWidth(93),
                        decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Text(
                            "Apply",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: getProportionateScreenWidth(14),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
