import 'package:e_commerce_ui/screens/setting/components/appbar.dart';
import 'package:e_commerce_ui/screens/setting/components/notifications.dart';
import 'package:e_commerce_ui/screens/setting/components/password_form.dart';
import 'package:e_commerce_ui/screens/setting/components/personal_information_form.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';
class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Setting",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: getProportionateScreenWidth(34)),
              ),
              SizedBox(
                height: getProportionateScreenWidth(20),
              ),
              const PersonalInformationForm(),
              SizedBox(
                height: getProportionateScreenWidth(30),
              ),
              const PasswordForm(),
              SizedBox(
                height: getProportionateScreenWidth(30),
              ),
              const Notifications(),
            ],
          ),
        ),
      ),
    );
  }
}