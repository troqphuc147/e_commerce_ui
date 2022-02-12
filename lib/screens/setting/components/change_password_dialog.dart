import 'package:e_commerce_ui/components/default_button.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';

class ChangePasswordButton extends StatefulWidget {
  const ChangePasswordButton({
    Key? key,
  }) : super(key: key);

  @override
  _ChangePasswordButton createState() => _ChangePasswordButton();
}

class _ChangePasswordButton extends State<ChangePasswordButton> {
  String oldPass = "";
  String newPass = "";
  String repeatPass = "";
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        show(context);
        setState(() {});
      },
      child: Text(
        "Change",
        style: TextStyle(
            fontWeight: FontWeight.w600,
            color: kPrimarySecondColor,
            fontSize: getProportionateScreenWidth(14)),
      ),
    );
  }

  show(BuildContext context) {
    showModalBottomSheet<void>(
      backgroundColor: Colors.transparent,
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Container(
          height: getProportionateScreenWidth(472),
          decoration: const BoxDecoration(
              color: Color(0xfff5f4f4),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50))),
          child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                  vertical: getProportionateScreenWidth(15)),
              child: ButtonTheme(
                child: Column(
                  children: [
                    SizedBox(
                      height: getProportionateScreenWidth(14),
                    ),
                    Container(
                      width: getProportionateScreenWidth(60),
                      height: getProportionateScreenWidth(6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: kPrimarySecondColor,
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenWidth(20),
                    ),
                    Text(
                      "Password Change",
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(18),
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: getProportionateScreenWidth(20),
                    ),
                    oldPasswordFormField(),
                    SizedBox(
                      height: getProportionateScreenWidth(20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Forgot password?",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(14),
                            color: kPrimarySecondColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: getProportionateScreenWidth(20),
                    ),
                    newPasswordFormField(),
                    SizedBox(
                      height: getProportionateScreenWidth(20),
                    ),
                    repeatPasswordFormField(),
                    const Spacer(),
                    DefaultButton(
                      text: "Save password",
                      onPress: () {
                        Navigator.pop(context);
                      },
                    ),
                    SizedBox(
                      height: getProportionateScreenWidth(15),
                    ),
                  ],
                ),
              )),
        );
      },
    );
  }

  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(0),
    borderSide: const BorderSide(color: Color(0xFF757575)),
    gapPadding: 10,
  );
  TextFormField oldPasswordFormField() {
    return TextFormField(
      initialValue: oldPass,
      obscureText: true,
      onChanged: (value) {
        setState(() {
          oldPass = value;
        });
      },
      decoration: InputDecoration(
        hintText: "Old password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        border: outlineInputBorder,
      ),
    );
  }

  TextFormField newPasswordFormField() {
    return TextFormField(
      initialValue: newPass,
      obscureText: true,
      onChanged: (value) {
        setState(() {
          newPass = value;
        });
      },
      decoration: InputDecoration(
        hintText: "New password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        border: outlineInputBorder,
      ),
    );
  }

  TextFormField repeatPasswordFormField() {
    return TextFormField(
      initialValue: repeatPass,
      obscureText: true,
      onChanged: (value) {
        setState(() {
          repeatPass = value;
        });
      },
      decoration: InputDecoration(
        hintText: "Repeat new password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        border: outlineInputBorder,
      ),
    );
  }
}
