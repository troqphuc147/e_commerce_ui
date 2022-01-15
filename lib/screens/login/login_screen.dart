import 'package:e_commerce_ui/screens/login/components/body.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_ui/size_config.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}

