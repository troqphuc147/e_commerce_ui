import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/screens/setting/components/change_password_dialog.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PasswordForm extends StatefulWidget {
  const PasswordForm({Key? key}) : super(key: key);

  @override
  _PasswordForm createState() =>
      _PasswordForm();
}

class _PasswordForm extends State<PasswordForm> {
  String password = "mynamehuynhtrongphuc";
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Password",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: getProportionateScreenWidth(16)),
            ),
            const ChangePasswordButton(),
          ],
        ),
        SizedBox(
          height: getProportionateScreenWidth(20),
        ),
        passwordFormField(),
      ],
    );
  }

  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(0),
    borderSide: const BorderSide(color: Color(0xFF757575)),
    gapPadding: 10,
  );
  TextFormField passwordFormField() {
    return TextFormField(
      initialValue: password,
      obscureText: true,
      onChanged: (value) {
        setState(() {
          password = value;
        });
      },
      decoration: InputDecoration(
        hintText: "Full name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        border: outlineInputBorder,
      ),
    );
  }
}
