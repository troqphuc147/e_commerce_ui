import 'package:e_commerce_ui/models/product.dart';
import 'package:e_commerce_ui/screens/product/components/body.dart';
import 'package:e_commerce_ui/screens/product/components/bottom_button.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  final Product product;
  const ProductScreen({Key? key, required this.product}) : super(key: key);

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: getProportionateScreenWidth(24),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          widget.product.category,
          style: TextStyle(
              fontSize: getProportionateScreenWidth(18),
              fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.share,
                color: Colors.black,
                size: getProportionateScreenWidth(24),
              ))
        ],
      ),
      body: Body(
        productInfor: ProductInfor(widget.product),
      ),
      bottomNavigationBar: const BottomButton(),
    );
  }
}
