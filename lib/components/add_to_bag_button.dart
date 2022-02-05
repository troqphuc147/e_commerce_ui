import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddToBagButton extends StatefulWidget {
  const AddToBagButton({Key? key}) : super(key: key);

  @override
  _AddToBagButton createState() => _AddToBagButton();
}

class _AddToBagButton extends State<AddToBagButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenWidth(36),
      width: getProportionateScreenWidth(36),
      decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(50),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 4),
              color: Color(0xffe8e8e8),
            )
          ]),
      child: Center(
          child: Icon(
        Icons.shopping_bag,
        color: Colors.white,
        size: getProportionateScreenWidth(20),
      )),
    );
  }
}
