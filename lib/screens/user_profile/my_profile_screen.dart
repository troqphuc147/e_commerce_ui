import 'package:e_commerce_ui/components/custom_bottom_nav__bar.dart';
import 'package:e_commerce_ui/enums.dart';
import 'package:e_commerce_ui/screens/user_profile/components/appbar.dart';
import 'package:e_commerce_ui/screens/user_profile/components/body.dart';
import 'package:flutter/material.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  _MyProfileScreenState createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context),
      body: const Body(),
      bottomNavigationBar: const CustomBottomNavBar(
        selectedMenuState: MenuState.profile,
      ),
    );
  }
}
