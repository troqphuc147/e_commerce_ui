import 'package:flutter/material.dart';

import '../size_config.dart';

class DefaultButton2 extends StatefulWidget {
  final String content;
  final Function()? onPress;
  const DefaultButton2({Key? key, required this.content, this.onPress})
      : super(key: key);

  @override
  _DefaultButton2State createState() => _DefaultButton2State();
}

class _DefaultButton2State extends State<DefaultButton2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenWidth(10)),
      child: GestureDetector(
        onTap: widget.onPress,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.content,
              style: TextStyle(fontSize: getProportionateScreenWidth(14)),
            ),
            Icon(
              Icons.chevron_right,
              color: Colors.black,
              size: getProportionateScreenWidth(16),
            )
          ],
        ),
      ),
    );
  }
}
