import 'package:e_commerce_ui/components/default_button_2.dart';
import 'package:e_commerce_ui/models/Product.dart';
import 'package:e_commerce_ui/screens/product/components/header.dart';
import 'package:e_commerce_ui/screens/product/components/product_detail.dart';
import 'package:e_commerce_ui/screens/product/components/product_recommend.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  final ProductInfor productInfor;
  const Body({Key? key, required this.productInfor}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Header(productInfor: productInfor),
          SizedBox(
            height: getProportionateScreenWidth(20),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
            ),
            child: ProductDetail(
              productInfor: widget.productInfor,
            ),
          ),
          SizedBox(
            height: getProportionateScreenWidth(20),
          ),
          const Divider(
            thickness: 1.5,
          ),
          const DefaultButton2(content: "Review and Rating"),
          const Divider(
            thickness: 1.5,
          ),
          const DefaultButton2(content: "Shipping information"),
          const Divider(
            thickness: 1.5,
          ),
          const DefaultButton2(content: "Suport"),
          const Divider(
            thickness: 1.5,
          ),
          SizedBox(
            height: getProportionateScreenWidth(20),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: const ProductRecommend(),
          ),
        ],
      ),
    ));
  }
}
