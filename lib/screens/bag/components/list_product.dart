import 'package:e_commerce_ui/models/Product.dart';
import 'package:e_commerce_ui/screens/bag/components/product_in_bag_cart.dart';
import 'package:flutter/material.dart';

class ListProductInBag extends StatefulWidget {
  List<bool> isChange;
  ListProductInBag({Key? key, required this.isChange}) : super(key: key);
  @override
  _ListProductInBagState createState() => _ListProductInBagState();
}

class _ListProductInBagState extends State<ListProductInBag> {
  List<bool> isChange = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isChange = widget.isChange;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...List.generate(
              listProductInBag.length,
              (index) => ProductInBagCart(
                    productInBag: listProductInBag[index],
                    change: isChange[index],
                  )),
        ],
      ),
    );
  }
}
