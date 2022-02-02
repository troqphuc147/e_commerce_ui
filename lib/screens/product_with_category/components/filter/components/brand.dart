import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/models/brands.dart';
import 'package:flutter/material.dart';

import '../../../../../size_config.dart';

class BrandFilter extends StatefulWidget {
  const BrandFilter({Key? key}) : super(key: key);

  @override
  _BrandFilterState createState() => _BrandFilterState();
}

class _BrandFilterState extends State<BrandFilter> {
  List<String> list = listBrand;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: getProportionateScreenWidth(20),
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Text(
            "Brands",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                fontWeight: FontWeight.w600),
          ),
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ...List.generate(
                      list.length,
                      (index) => Text(
                            " " + list[index] + ",",
                            style: TextStyle(
                              color: kPrimarySecondColor,
                              fontSize: getProportionateScreenWidth(11),
                            ),
                          )),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios,
                  size: getProportionateScreenWidth(24),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: getProportionateScreenWidth(80),
        )
      ],
    );
  }
}
