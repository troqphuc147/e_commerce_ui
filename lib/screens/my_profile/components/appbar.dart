import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

AppBar appbar(BuildContext context) {
  return AppBar(
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
