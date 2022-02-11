import 'package:e_commerce_ui/components/default_button.dart';
import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/screens/home/home_screen.dart';
import 'package:e_commerce_ui/screens/order_success/components/body.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class OrderSuccessScreen extends StatelessWidget {
  const OrderSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Body(),
      bottomSheet: Container(
        color: kBackgroundColor,
        padding: EdgeInsets.all(getProportionateScreenWidth(20)),
        child: DefaultButton(
          text: "CONTINUE SHOPPING",
          onPress: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const HomeScreen()));
          },
        ),
      ),
    );
  }
}
