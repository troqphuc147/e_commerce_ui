import 'package:e_commerce_ui/components/pick_size.dart';
import 'package:e_commerce_ui/models/Product.dart';
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
            children:const  [
               PickSize(),
            ],
          )
        ],
      ),
    );
  }
}
