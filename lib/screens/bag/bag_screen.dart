import 'package:e_commerce_ui/components/custom_bottom_nav__bar.dart';
import 'package:e_commerce_ui/enums.dart';
import 'package:e_commerce_ui/screens/bag/components/body.dart';
import 'package:flutter/material.dart';
class BagScreen extends StatefulWidget {
  const BagScreen({Key? key}) : super(key: key);

  @override
  _BagScreenState createState() => _BagScreenState();
}

class _BagScreenState extends State<BagScreen> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenuState: MenuState.bag,),
    );
  }
}
