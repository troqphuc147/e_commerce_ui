import 'package:e_commerce_ui/models/category.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class ListCategoryChips extends StatelessWidget {
  const ListCategoryChips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding:
      EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          spacing: getProportionateScreenWidth(8),
          children: [
            ...List.generate(
                listChip.length,
                    (index) => Chip(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20)),
                    backgroundColor: Colors.black,
                    label: Text(
                      listChip[index].category,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: getProportionateScreenWidth(14)),
                    ))),
          ],
        ),
      ),
    );
  }
}
