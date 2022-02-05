import 'package:e_commerce_ui/components/custom_bottom_nav__bar.dart';
import 'package:e_commerce_ui/enums.dart';
import 'package:e_commerce_ui/screens/favorite/components/appbar.dart';
import 'package:e_commerce_ui/screens/favorite/components/body.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: appBar(context),
      body: const Body(),
      bottomNavigationBar: const CustomBottomNavBar(
        selectedMenuState: MenuState.favorite,
      ),
    );
  }
}
