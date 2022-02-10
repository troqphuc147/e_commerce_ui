import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  String email = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        emailFormField(),
        SizedBox(height: SizeConfig.screenHeight*0.018,),
        passwordFormField(),
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
}

