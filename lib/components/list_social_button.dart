import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListSocialButton extends StatelessWidget {
  const ListSocialButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 64,
          width: 92,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: SvgPicture.asset(
            "assets/icons/google_icon.svg",
            height: 24,
            width: 24,
            fit: BoxFit.scaleDown,
          ),
        ),
        SizedBox(
          width: getProportionateScreenWidth(20),
        ),
        Container(
          height: 64,
          width: 92,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: SvgPicture.asset(
            "assets/icons/fb_icon.svg",
            height: 24,
            width: 24,
            fit: BoxFit.scaleDown,
          ),
        )
      ],
    );
  }
}
