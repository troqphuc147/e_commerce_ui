import 'package:e_commerce_ui/screens/user_shipping_address/components/appbar.dart';
import 'package:e_commerce_ui/screens/user_shipping_address/components/body.dart';
import 'package:flutter/material.dart';
class UserShippingAddress extends StatefulWidget {
  const UserShippingAddress({Key? key}) : super(key: key);

  @override
  _UserShippingAddressState createState() => _UserShippingAddressState();
}

class _UserShippingAddressState extends State<UserShippingAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: const Body(),
    );
  }
}
