import 'package:e_commerce_ui/components/list_social_button.dart';
import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/screens/login/components/login_form.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_ui/components/default_button.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

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
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.08,
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
                "Login",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
              const LoginForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Text("Forgot your password "),
                          Icon(
                            Icons.arrow_right_alt,
                            color: Colors.red,
                          )
                        ],
                      ))
                ],
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              DefautlButton(text: "LOGIN"),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Or login with social account",
                  ),
                ],
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              const ListSocialButton(),
            ],
          ),
        ),
      ),
    ));
  }
}
