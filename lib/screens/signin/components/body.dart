import 'package:e_commerce_ui/components/list_social_button.dart';
import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/screens/forgot_password/forgot_password_screen.dart';
import 'package:e_commerce_ui/screens/home/home_screen.dart';
import 'package:e_commerce_ui/screens/signin/components/login_form.dart';
import 'package:e_commerce_ui/screens/signup/signup_screen.dart';
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
                "Sign in",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.06),
              const LoginForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ForgotPasswordScreen()));
                      },
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
              DefaultButton(
                text: "Sign in",
                onPress: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                },
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("You don't have account?   "),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpScreen()));
                      },
                      child: const Text(
                        " Sign up ",
                        style: TextStyle(
                            color: Color(0xff55a9ff),
                            decoration: TextDecoration.underline),
                      )),
                ],
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.075),
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
