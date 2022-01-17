import 'package:e_commerce_ui/components/default_button.dart';
import 'package:e_commerce_ui/screens/forgot_password/components/forgot_password_form.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.01,
              ),
              const Text(
                "Lavpee",
                style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: kPrimaryColor),
                textAlign: TextAlign.left,
              ),
              const Text(
                "Forgot password",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.06),
              Row(
                children: const [
                  Flexible(
                      child: Text(
                          'Please, enter your email address. You will receive a link to create a new password via email')),
                ],
              ),
              SizedBox(height: SizeConfig.screenHeight*0.03,),
              const ForgotPasswordForm(),
              SizedBox(height: SizeConfig.screenHeight*0.07,),
              DefautlButton(text: "SEND"),
            ],
          ),
        ),
      ),
    ));
  }
}
