import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_ui/components/default_button.dart';

class BottomButton extends StatefulWidget {
  const BottomButton({Key? key}) : super(key: key);

  @override
  _BottomButtonState createState() => _BottomButtonState();
}

class _BottomButtonState extends State<BottomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenWidth(90),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: DefaultButton(text: "add to cart")),
          SizedBox(
            height: getProportionateScreenWidth(20),
          ),
        ],
      ),
    );
  }
}
