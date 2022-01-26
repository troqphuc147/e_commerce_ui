import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class CommentForm extends StatefulWidget {
  const CommentForm({Key? key}) : super(key: key);

  @override
  _CommentForm createState() => _CommentForm();
}

class _CommentForm extends State<CommentForm> {
  final key = GlobalKey<FormState>();
  String comment = "";
  @override
  Widget build(BuildContext context) {
    return emailFormField();
  }

  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(5),
    borderSide: const BorderSide(color: Colors.white),
    gapPadding: 10,
  );
  Widget emailFormField() {
    return Container(
      color: Colors.white,
      margin:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: TextFormField(
        cursorColor: Colors.black,
        initialValue: comment,
        obscureText: false,
        onChanged: (value) {
          setState(() {
            comment = value;
          });
        },
        minLines: 6,
        maxLines: 6,
        decoration: InputDecoration(
          hintText: "Your review",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          enabledBorder: outlineInputBorder,
          border: outlineInputBorder,
          focusedBorder: outlineInputBorder,
        ),
      ),
    );
  }
}
