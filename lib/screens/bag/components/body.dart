import 'package:e_commerce_ui/components/like_button.dart';
import 'package:flutter/material.dart';
class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: LikeButton(
        ),
      ),
    );
  }
}
