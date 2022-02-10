import 'package:e_commerce_ui/components/custom_bottom_nav__bar.dart';
import 'package:e_commerce_ui/enums.dart';
import 'package:e_commerce_ui/screens/shop/components/body.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xfff5f4f4),
          title: Text(
            "Categories",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: getProportionateScreenWidth(18)),
          ),
          elevation: 5,
        ),
        body: const Body(),
        bottomNavigationBar: const CustomBottomNavBar(
          selectedMenuState: MenuState.shop,
        ),
      ),
    );
  }
}
