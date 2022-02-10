import 'package:flutter/material.dart';

import '../../../size_config.dart';
class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  String email = "";
  String password = "";
  String rePassword = "";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        emailFormField(),
        SizedBox(height: SizeConfig.screenHeight*0.018,),
        passwordFormField(),
        SizedBox(height: SizeConfig.screenHeight*0.018,),
        rePasswordFormField(),
      ],
    );
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
  TextFormField passwordFormField(){
    return TextFormField(
      initialValue: password,
      obscureText: true,
      onChanged: (value) {
        setState(() {
          password = value;
        });
      },
      decoration: const InputDecoration(
        label: Text("Password"),
        hintText: "Enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
  TextFormField rePasswordFormField(){
    return TextFormField(
      initialValue: rePassword,
      obscureText: true,
      onChanged: (value) {
        setState(() {
          rePassword = value;
        });
      },
      decoration: const InputDecoration(
        label: Text("Confirm password"),
        hintText: "Enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
