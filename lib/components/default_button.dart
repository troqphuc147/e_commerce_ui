import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class DefautlButton extends StatefulWidget {
  final String text;
  final Function()? onPress;
  DefautlButton({Key? key, required this.text, this.onPress}) : super(key: key);
  @override
  _DefautlButtonState createState() => _DefautlButtonState();
}

class _DefautlButtonState extends State<DefautlButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(48),
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: kPrimaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(45))),
        child: Text(
          widget.text.toUpperCase(),
          style: TextStyle(
              color: Colors.white,
              fontSize: getProportionateScreenWidth(14),
              fontWeight: FontWeight.w600),
        ),
        onPressed: widget.onPress,
      ),
    );
  }
}
