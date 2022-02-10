import 'package:e_commerce_ui/models/Product.dart';
import 'package:e_commerce_ui/screens/bag/components/product_in_bag_cart.dart';
import 'package:flutter/material.dart';

class ListProductInBag extends StatefulWidget {
  const ListProductInBag({Key? key,}) : super(key: key);
  @override
  _ListProductInBagState createState() => _ListProductInBagState();
}

class _ListProductInBagState extends State<ListProductInBag> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...List.generate(
              listProductInBag.length,
              (index) => ProductInBagCart(
                    productInBag: listProductInBag[index],

                  )),
        ],
      ),
    );
  }
}
