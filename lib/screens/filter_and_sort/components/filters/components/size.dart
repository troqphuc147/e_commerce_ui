import 'package:e_commerce_ui/screens/filter_and_sort/components/filters/components/size_container.dart';
import 'package:flutter/material.dart';

import '../../../../../../../size_config.dart';

class SizeFilter extends StatefulWidget {
  const SizeFilter({Key? key}) : super(key: key);

  @override
  _SizeFilterState createState() => _SizeFilterState();
}

class _SizeFilterState extends State<SizeFilter> {
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
            "Sizes",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                fontWeight: FontWeight.w600),
          ),
        ),
        Container(
          height: getProportionateScreenWidth(80),
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                SizeContainer(size: "XS"),
                SizeContainer(size: "S"),
                SizeContainer(size: "M"),
                SizeContainer(size: "L"),
                SizeContainer(size: "XL"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
