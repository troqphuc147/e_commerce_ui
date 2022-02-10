import 'package:e_commerce_ui/components/like_button.dart';
import 'package:e_commerce_ui/models/Product.dart';
import 'package:e_commerce_ui/screens/bag/components/container_for_promocode.dart';
import 'package:e_commerce_ui/screens/bag/components/list_product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  double total = 0;
  List<bool> isChange = [];
  create() {
    for (var i in listProductInBag) {
      isChange.add(false);
      total += i.totalPrice;
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    create();
  }

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
            Expanded(
                child: ListProductInBag(
              isChange: isChange,
            )),
            SizedBox(
              height: getProportionateScreenWidth(14),
            ),
            const ContainerPromoCode(),
            SizedBox(
              height: getProportionateScreenWidth(14),
            ),
            Row(
              children: [Text(total.toInt().toString())],
            ),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
          ],
        ));
  }
}
