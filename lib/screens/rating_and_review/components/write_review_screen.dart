import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WriteReviewScreen extends StatefulWidget {
  const WriteReviewScreen({Key? key}) : super(key: key);
  @override
  _WriteReviewScreen createState() => _WriteReviewScreen();
}

class _WriteReviewScreen extends State<WriteReviewScreen> {
  String size = "Size";
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: getProportionateScreenWidth(640),
      width: double.infinity,
      child: Column(

      ),
    );
  }
}
