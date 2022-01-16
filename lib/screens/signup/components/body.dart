import 'package:e_commerce_ui/components/default_button.dart';
import 'package:e_commerce_ui/components/list_social_button.dart';
import 'package:e_commerce_ui/screens/signin/login_screen.dart';
import 'package:e_commerce_ui/screens/signup/components/signup_form.dart';
import 'package:e_commerce_ui/screens/signup/signup_screen.dart';
import 'package:e_commerce_ui/size_config.dart';
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
                "Sign up",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.06),
              const SignUpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()));
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Text("Already have an account? "),
                          Icon(
                            Icons.arrow_right_alt,
                            color: Colors.red,
                          )
                        ],
                      ))
                ],
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.045),
              DefautlButton(text: "Sign up"),
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [Text("Or sign up with social account")],
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
