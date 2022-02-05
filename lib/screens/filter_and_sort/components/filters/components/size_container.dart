import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class SizeContainer extends StatefulWidget {
  final String size;
  const SizeContainer({Key? key, required this.size}) : super(key: key);

  @override
  _SizeContainerState createState() => _SizeContainerState();
}

class _SizeContainerState extends State<SizeContainer> {
  Color color = Colors.white;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (color == Colors.white) {
            color = kPrimaryColor;
          } else {
            color = Colors.white;
          }
        });
      },
      child: Container(
          height: getProportionateScreenWidth(40),
          width: getProportionateScreenWidth(40),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: kPrimarySecondColor),
              color: color),
          child: Center(
            child: Text(
              widget.size,
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(14),
                  color: color == kPrimaryColor ? Colors.white : Colors.black),
            ),
          )),
    );
  }
}
