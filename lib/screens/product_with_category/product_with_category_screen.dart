import 'package:e_commerce_ui/screens/product_with_category/components/appbar.dart';
import 'package:e_commerce_ui/screens/product_with_category/components/body.dart';
import 'package:flutter/material.dart';
class ProductWithCategoryScreen extends StatefulWidget {
  const ProductWithCategoryScreen({Key? key}) : super(key: key);

  @override
  _ProductWithCategoryScreenState createState() => _ProductWithCategoryScreenState();
}

class _ProductWithCategoryScreenState extends State<ProductWithCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: const Body(),
    );
  }
}
