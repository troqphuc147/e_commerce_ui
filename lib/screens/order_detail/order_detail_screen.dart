import 'package:e_commerce_ui/components/custom_bottom_nav__bar.dart';
import 'package:e_commerce_ui/models/user_profile.dart';
import 'package:e_commerce_ui/screens/order_detail/componets/appbar.dart';
import 'package:e_commerce_ui/screens/order_detail/componets/body.dart';
import 'package:flutter/material.dart';

import '../../enums.dart';
class OrderDetailScreen extends StatelessWidget {
  final UserOrder userOrder;
  final int total;
  const OrderDetailScreen({Key? key, required this.userOrder, required this.total}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context),
      body:  Body(
        userOrder:  userOrder,
        total: total,
      ),
      bottomNavigationBar: const CustomBottomNavBar(
        selectedMenuState: MenuState.profile,
      ),
    );
  }
}
