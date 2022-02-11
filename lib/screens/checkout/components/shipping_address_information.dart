import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/models/user_profile.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class ShippingAddressInformation extends StatefulWidget {
  const ShippingAddressInformation({Key? key}) : super(key: key);

  @override
  _ShippingAddressInformationState createState() =>
      _ShippingAddressInformationState();
}

class _ShippingAddressInformationState
    extends State<ShippingAddressInformation> {
  ShippingAddress shippingAddress = myProfile.shippingAddress[0];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Shipping address",
          style: TextStyle(
              fontSize: getProportionateScreenWidth(16),
              fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: getProportionateScreenWidth(20),
        ),
        Container(
          width: double.infinity,
          height: getProportionateScreenWidth(108),
          padding: EdgeInsets.all(getProportionateScreenWidth(20)),
          margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(4)),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.45),
                  offset: const Offset(2, 2),
                  blurRadius: 7.0,
                ),
                BoxShadow(
                  color: Colors.grey.withOpacity(0.45),
                  offset: const Offset(-2, -2),
                  blurRadius: 7.0,
                ),
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    shippingAddress.nameReceiver,
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(14),
                        fontWeight: FontWeight.w500),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Change",
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(14),
                          color: kPrimaryColor),
                    ),
                  )
                ],
              ),
              const Spacer(),
              SizedBox(
                width: getProportionateScreenWidth(235),
                child: Wrap(
                  children: [
                    Text(
                      shippingAddress.address,
                      style:
                          TextStyle(fontSize: getProportionateScreenWidth(14)),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
