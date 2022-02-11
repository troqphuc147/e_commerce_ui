import 'package:e_commerce_ui/screens/user_payment_method/components/appbar.dart';
import 'package:e_commerce_ui/screens/user_payment_method/components/body.dart';
import 'package:flutter/material.dart';
class UserPaymentMethod extends StatefulWidget {
  int index;
  UserPaymentMethod({Key? key,  required this.index}) : super(key: key);

  @override
  _UserPaymentMethodState createState() => _UserPaymentMethodState();
}

class _UserPaymentMethodState extends State<UserPaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Body(
        methodSelected: widget.index,
      ),
    );
  }
}
