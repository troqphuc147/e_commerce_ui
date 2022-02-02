import 'package:e_commerce_ui/constants.dart';
import 'package:flutter/material.dart';

import '../../../../../size_config.dart';

class BottomButtons extends StatefulWidget {
  const BottomButtons({Key? key}) : super(key: key);

  @override
  _BottomButtonsState createState() => _BottomButtonsState();
}

class _BottomButtonsState extends State<BottomButtons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenWidth(80),
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            offset: const Offset(5, 0),
            color: Colors.grey.withOpacity(0.45),
            blurRadius: 7.0)
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: getProportionateScreenWidth(36),
              width: getProportionateScreenWidth(160),
              decoration: BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: kPrimarySecondColor),
              ),
              child: Center(
                child: Text(
                  "Discard",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(14)),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: getProportionateScreenWidth(36),
              width: getProportionateScreenWidth(160),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: kPrimarySecondColor),
              ),
              child: Center(
                child: Text(
                  "Apply",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: getProportionateScreenWidth(14)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
