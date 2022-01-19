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
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 4),
              color: Color(0xffe8e8e8),
            )
          ]),
      child: Center(
          child: IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                setState(() {
                  like = !like;
                });
              },
              iconSize: getProportionateScreenWidth(20),
              icon: like
                  ? const Icon(
                      Icons.favorite,
                      color: kPrimaryColor,
                    )
                  : const Icon(
                      Icons.favorite_outline,
                      color: kPrimarySecondColor,
                    ))),
    );
  }
}
