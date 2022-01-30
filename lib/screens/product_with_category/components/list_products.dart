import 'package:e_commerce_ui/components/new_product_cart.dart';
import 'package:e_commerce_ui/components/product_cart.dart';
import 'package:e_commerce_ui/models/Product.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class ListProduct extends StatefulWidget {
  const ListProduct({Key? key}) : super(key: key);

  @override
  _ListProductState createState() => _ListProductState();
}

class _ListProductState extends State<ListProduct> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          width: getProportionateScreenWidth(20),
        ),
        Column(
          children: [
            ...List.generate(
                listWomanTop.length,
                (index) => index % 2 == 1
                    ? ProductCard(product: listWomanTop[index])
                    : const SizedBox()),
          ],
        ),
        Column(
          children: [
            ...List.generate(
                listWomanTop.length,
                (index) => index % 2 == 0
                    ? NewProductCard(product: listWomanTop[index])
                    : const SizedBox()),
          ],
        ),
      ],
    );
  }
}
