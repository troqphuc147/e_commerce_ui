import 'package:e_commerce_ui/screens/user_order/components/appbar.dart';
import 'package:e_commerce_ui/screens/user_order/components/body.dart';
import 'package:flutter/material.dart';
class UserOrderScreen extends StatefulWidget {
  const UserOrderScreen({Key? key}) : super(key: key);

  @override
  _UserOrderScreenState createState() => _UserOrderScreenState();
}

class _UserOrderScreenState extends State<UserOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context),
      body: const Body(),
    );
  }
}
