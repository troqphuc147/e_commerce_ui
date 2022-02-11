import 'package:e_commerce_ui/screens/checkout/components/appbar.dart';
import 'package:e_commerce_ui/screens/checkout/components/body.dart';
import 'package:flutter/material.dart';
class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: const Body(),
    );
  }
}
