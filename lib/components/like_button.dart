import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LikeButton extends StatefulWidget {
  const LikeButton({Key? key}) : super(key: key);

  @override
  _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool like = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenWidth(36),
      width: getProportionateScreenWidth(36),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              setState(() {
                like != like;
              });
            },
            icon: SvgPicture.asset(
              "assets/icons/heart.svg",
              color: like ? kPrimaryColor : Colors.white,
              fit: BoxFit.cover,
              height: getProportionateScreenWidth(36),
              width: getProportionateScreenWidth(36),
            )),
      ),
    );
  }
}
