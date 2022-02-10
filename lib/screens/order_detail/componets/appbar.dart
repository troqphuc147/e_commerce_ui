import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

AppBar appbar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 7.0,
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
    title: Text("Order Details", style: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: getProportionateScreenWidth(18),
    ),),
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
