import 'package:e_commerce_ui/models/user_profile.dart';
import 'package:e_commerce_ui/screens/user_shipping_address/components/add_shipping_address_screen.dart';
import 'package:e_commerce_ui/screens/user_shipping_address/components/shipping_address_list.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int defaultAddress = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(20)),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const ShippingAddressList(),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const AddShippingAddressScreen()));
                  },
                  child: Container(
                      height: getProportionateScreenWidth(36),
                      width: getProportionateScreenWidth(36),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: getProportionateScreenWidth(24),
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
