import 'package:e_commerce_ui/screens/filter_and_sort/components/filters/components/color_container.dart';
import 'package:flutter/material.dart';

import '../../../../../../../size_config.dart';

class ColorFilter extends StatefulWidget {
  const ColorFilter({Key? key}) : super(key: key);

  @override
  _ColorFilterState createState() => _ColorFilterState();
}

class _ColorFilterState extends State<ColorFilter> {
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
            "Colors",
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
                ColorContainer(color: Colors.black),
                ColorContainer(color: Color(0xffF6F6F6)),
                ColorContainer(color: Color(0xffB82222)),
                ColorContainer(color: Color(0xffBEA9A9)),
                ColorContainer(color: Color(0xffE2BB8D)),
                ColorContainer(color: Color(0xff151867)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
