import 'package:e_commerce_ui/components/custom_bottom_nav__bar.dart';
import 'package:e_commerce_ui/enums.dart';
import 'package:e_commerce_ui/screens/home/components/body.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenuState: MenuState.home),
    );
  }
}
