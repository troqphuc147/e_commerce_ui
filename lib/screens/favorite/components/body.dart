import 'package:e_commerce_ui/screens/favorite/components/list_products.dart';
import 'package:e_commerce_ui/screens/filter_and_sort/filters_and_sort.dart';
import 'package:e_commerce_ui/screens/product_with_category/components/header.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        const ListCategoryChips(),
        const FilterAndSort(),
        Expanded(
          child: Container(
            padding:
                EdgeInsets.symmetric(vertical: getProportionateScreenWidth(20)),
            child: const SingleChildScrollView(child: ListProduct()),
          ),
        ),
      ],
    ));
  }
}
