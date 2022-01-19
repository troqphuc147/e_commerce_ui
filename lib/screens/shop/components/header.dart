import 'package:e_commerce_ui/constants.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class Header extends StatefulWidget {
  final String content;
  final String subContent;
  const Header({Key? key, required this.content, required this.subContent})
      : super(key: key);
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: getProportionateScreenWidth(100),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: kPrimaryColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.content,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: getProportionateScreenWidth(24)),
            ),
            if (widget.subContent != "")
              Text(
                widget.subContent,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: getProportionateScreenWidth(14),
                ),
              ),
          ],
        ));
  }
}
