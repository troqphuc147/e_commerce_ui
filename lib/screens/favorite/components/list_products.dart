import 'package:e_commerce_ui/components/favorite_product_cart.dart';
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
    return Column(
      children: [
        Wrap(
          runSpacing: getProportionateScreenWidth(15),
          children: [
            ...List.generate(
                listFavoriteProducts.length,
                (index) =>
                    FavoriteProductCard(product: listFavoriteProducts[index]))
          ],
        ),
      ],
    );
  }
}
