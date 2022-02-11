import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

AppBar appBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 4.0,
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
    title: Text(
      "Payment Method",
      style: TextStyle(
        fontSize: getProportionateScreenWidth(18),
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
