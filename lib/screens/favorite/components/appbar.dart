import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

AppBar appBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    title: Text(
      "Favorites",
      style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: getProportionateScreenWidth(18)),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.search,
          color: Colors.black,
          size: getProportionateScreenWidth(24),
        ),
      )
    ],
  );
}
