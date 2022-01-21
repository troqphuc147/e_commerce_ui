import 'package:e_commerce_ui/components/like_button.dart';
import 'package:e_commerce_ui/components/pick_color.dart';
import 'package:e_commerce_ui/components/pick_size.dart';
import 'package:e_commerce_ui/models/Product.dart';
import 'package:e_commerce_ui/screens/product/components/product_information.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  final ProductInfor productInfor;
  const ProductDetail({Key? key, required this.productInfor}) : super(key: key);

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              PickSize(),
              PickColor(),
              LikeButton(),
            ],
          ),
          SizedBox(
            height: getProportionateScreenWidth(20),
          ),
          ProductInformation(
            productInfor: widget.productInfor,
          ),
        ],
      ),
    );
  }
}
