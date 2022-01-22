import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

const kEmailNullError = "Email can't empty";
const kPasswordNullError = "Password can't empty";
const kPasswordSort = "Password must longer than 8 digits";
const kPrimaryColor = Color(0xFFDB3022);
const kPrimarySecondColor = Color(0xFF9B9B9B);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kBackgroundColor = Color(0xfff5f4f4);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(34),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);