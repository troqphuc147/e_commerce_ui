import 'package:e_commerce_ui/models/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class ShippingAddressList extends StatefulWidget {
  const ShippingAddressList({Key? key}) : super(key: key);
  @override
  _ShippingAddressListState createState() => _ShippingAddressListState();
}

class _ShippingAddressListState extends State<ShippingAddressList> {
  int defaultAddress = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(
            myProfile.shippingAddress.length,
            (index) => Container(
                  width: double.infinity,
                  height: getProportionateScreenWidth(140),
                  padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                  margin: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(4),
                      vertical: getProportionateScreenWidth(10)),
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
                            myProfile.shippingAddress[index].nameReceiver,
                            style: TextStyle(
                                fontSize: getProportionateScreenWidth(14),
                                fontWeight: FontWeight.w500),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              "Edit",
                              style: TextStyle(
                                  fontSize: getProportionateScreenWidth(14),
                                  color: kPrimaryColor),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: getProportionateScreenWidth(20),
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(235),
                        child: Wrap(
                          children: [
                            Text(
                              myProfile.shippingAddress[index].address,
                              style: TextStyle(
                                  fontSize: getProportionateScreenWidth(14)),
                            )
                          ],
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            defaultAddress = index;
                          });
                        },
                        child: Row(
                          children: [
                            index == defaultAddress
                                ? SvgPicture.asset(
                                    "assets/icons/checkbox_on.svg")
                                : SvgPicture.asset(
                                    "assets/icons/checkbox_off.svg"),
                            Text(
                              "   Use as default payment method",
                              style: TextStyle(
                                  fontSize: getProportionateScreenWidth(14)),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
      ],
    );
  }
}
