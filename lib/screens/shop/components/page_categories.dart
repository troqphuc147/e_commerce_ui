import 'package:e_commerce_ui/models/category.dart';
import 'package:e_commerce_ui/screens/shop/components/header.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_ui/components/category_cart.dart';

class PageCategories extends StatefulWidget {
  final List<Category> listCategory;
  const PageCategories({Key? key, required this.listCategory})
      : super(key: key);

  @override
  _PageCategoriesState createState() => _PageCategoriesState();
}

class _PageCategoriesState extends State<PageCategories> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            const Header(content: "SUMMER SALES", subContent: "Up to 50% off"),
            ...List.generate(widget.listCategory.length,
                (index) => CategoryCart(category: widget.listCategory[index])),
            SizedBox(
              height: getProportionateScreenWidth(20),
            )
          ],
        ),
      ),
    ));
  }
}
