import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/screens/product_with_category/components/sort_button.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FilterAndSort extends StatefulWidget {
  const FilterAndSort({Key? key}) : super(key: key);

  @override
  _FilterAndSortState createState() => _FilterAndSortState();
}

class _FilterAndSortState extends State<FilterAndSort> {
  String sort = "Price: lowest to high";
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenWidth(44),
      decoration:  BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 4),
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 7,
          )
        ],
      ),
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: getProportionateScreenWidth(10)),
        color: kBackgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  SvgPicture.asset("assets/icons/filter.svg"),
                  SizedBox(
                    width: getProportionateScreenWidth(5),
                  ),
                  Text(
                    "Filters",
                    style: TextStyle(fontSize: getProportionateScreenWidth(11)),
                  )
                ],
              ),
            ),
            SortButton(sort: sort),
            GestureDetector(
              onTap: () {},
              child: SvgPicture.asset("assets/icons/view_list.svg"),
            )
          ],
        ),
      ),
    );
  }

}
