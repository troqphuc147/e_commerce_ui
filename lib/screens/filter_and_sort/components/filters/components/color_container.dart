import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class ColorContainer extends StatefulWidget {
  final Color color;
  const ColorContainer({Key? key, required this.color}) : super(key: key);

  @override
  _ColorContainerState createState() => _ColorContainerState();
}

class _ColorContainerState extends State<ColorContainer> {
  Color colorBorder = Colors.white;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (colorBorder == Colors.white) {
            colorBorder = kPrimaryColor;
          } else {
            colorBorder = Colors.white;
          }
        });
      },
      child: Container(
        height: getProportionateScreenWidth(44),
        width: getProportionateScreenWidth(44),
        padding: EdgeInsets.all(getProportionateScreenWidth(4)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(color: colorBorder),
            color: Colors.white),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: widget.color),
        ),
      ),
    );
  }
}
