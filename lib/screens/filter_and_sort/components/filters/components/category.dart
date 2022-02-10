import 'package:e_commerce_ui/screens/filter_and_sort/components/filters/components/category_container.dart';
import 'package:flutter/material.dart';

import '../../../../../../../size_config.dart';

class CategoryFilter extends StatefulWidget {
  const CategoryFilter({Key? key}) : super(key: key);

  @override
  _CategoryFilterState createState() => _CategoryFilterState();
}

class _CategoryFilterState extends State<CategoryFilter> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
              vertical: getProportionateScreenWidth(15)),
          child: Text(
            "Category",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                fontWeight: FontWeight.w600),
          ),
        ),
        Container(
          height: getProportionateScreenWidth(135),
          padding:
              EdgeInsets.symmetric(vertical: getProportionateScreenWidth(20)),
          width: double.infinity,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Wrap(
                  spacing: getProportionateScreenWidth(15),
                  runSpacing: getProportionateScreenWidth(15),
                  children: const [
                    CategoryContainer(category: "All"),
                    CategoryContainer(category: "Woman"),
                    CategoryContainer(category: "Man"),
                    CategoryContainer(category: "Boys"),
                    CategoryContainer(category: "Girls"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
