import 'package:flutter/material.dart';
class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({Key? key}) : super(key: key);

  @override
  _ForgotPasswordFormState createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final key = GlobalKey<FormState>();
  String email = "";
  @override
  Widget build(BuildContext context) {
    return emailFormField();
  }
  TextFormField emailFormField(){
    return TextFormField(
      initialValue: email,
      obscureText: false,
      onChanged: (value) {
        setState(() {
          email = value;
        });
      },
      decoration: const InputDecoration(
        label: Text("Email"),
        hintText: "Enter your email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
