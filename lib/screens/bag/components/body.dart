import 'package:e_commerce_ui/components/default_button.dart';
import 'package:e_commerce_ui/screens/bag/components/container_for_promocode.dart';
import 'package:e_commerce_ui/screens/bag/components/list_product.dart';
import 'package:e_commerce_ui/screens/checkout/checkout_screen.dart';
import 'package:flutter/material.dart';
import '../../../size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "My Bag",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: getProportionateScreenWidth(34)),
            ),
            SizedBox(
              height: getProportionateScreenWidth(14),
            ),
            const Expanded(child: ListProductInBag()),
            SizedBox(
              height: getProportionateScreenWidth(14),
            ),
            const ContainerPromoCode(),
            SizedBox(
              height: getProportionateScreenWidth(14),
            ),
            DefaultButton(
              text: "Check out",
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CheckOutScreen()));
              },
            ),
            SizedBox(
              height: getProportionateScreenWidth(14),
            ),
          ],
        ));
  }
}
