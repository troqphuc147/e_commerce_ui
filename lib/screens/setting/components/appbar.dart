import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

AppBar appbar(BuildContext context) {
  return AppBar(
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(
        Icons.arrow_back_ios,
        color: Colors.black,
        size: getProportionateScreenWidth(24),
      ),
    ),
    actions: [
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            color: Colors.black,
            size: getProportionateScreenWidth(24),
          ))
    ],
  );
}
