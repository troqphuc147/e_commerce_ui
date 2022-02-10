import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class MainButton extends StatefulWidget {
  String content;
  String description;
  Function() onPressed;
  MainButton(
      {Key? key,
      required this.content,
      required this.description,
      required this.onPressed})
      : super(key: key);

  @override
  _MainButtonState createState() => _MainButtonState();
}

class _MainButtonState extends State<MainButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        height: getProportionateScreenWidth(72),
        width: double.infinity,
        padding: EdgeInsets.symmetric(
            vertical: getProportionateScreenWidth(18),
            horizontal: getProportionateScreenWidth(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.content,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: getProportionateScreenWidth(16)),
                ),
                Text(
                  widget.description,
                  style: TextStyle(
                      color: kPrimarySecondColor,
                      fontSize: getProportionateScreenWidth(11)),
                )
              ],
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: getProportionateScreenWidth(24),
              color: kPrimarySecondColor,
            )
          ],
        ),
      ),
    );
  }
}
