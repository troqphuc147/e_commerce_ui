import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/screens/bag/bag_screen.dart';
import 'package:e_commerce_ui/screens/favorite/favorite_screen.dart';
import 'package:e_commerce_ui/screens/home/home_screen.dart';
import 'package:e_commerce_ui/screens/shop/shop_screen.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:e_commerce_ui/enums.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({Key? key, required this.selectedMenuState})
      : super(key: key);
  final MenuState selectedMenuState;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SafeArea(
          top: false,
          child: Container(
            height: getProportionateScreenWidth(80),
            decoration: const BoxDecoration(
              color: Color(0xffffffff),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, -1),
                  color: kPrimarySecondColor,
                ),
              ],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    },
                    icon: SvgPicture.asset(
                      "assets/icons/home.svg",
                      color: MenuState.home == selectedMenuState
                          ? kPrimaryColor
                          : kPrimarySecondColor,
                      height: getProportionateScreenWidth(42),
                      width: getProportionateScreenWidth(30),
                      fit: BoxFit.fitHeight,
                    )),
                IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ShopScreen()));
                    },
                    icon: SvgPicture.asset(
                      "assets/icons/shop.svg",
                      color: MenuState.shop == selectedMenuState
                          ? kPrimaryColor
                          : kPrimarySecondColor,
                      height: getProportionateScreenWidth(42),
                      width: SizeConfig.screenWidth * 0.08,
                      fit: BoxFit.fitHeight,
                    )),
                IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BagScreen()));
                    },
                    icon: SvgPicture.asset(
                      "assets/icons/bag.svg",
                      color: MenuState.bag == selectedMenuState
                          ? kPrimaryColor
                          : kPrimarySecondColor,
                      height: getProportionateScreenWidth(42),
                      width: SizeConfig.screenWidth * 0.08,
                      fit: BoxFit.fitHeight,
                    )),
                IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FavoriteScreen()));
                    },
                    icon: SvgPicture.asset(
                      "assets/icons/favorite.svg",
                      color: MenuState.favorite == selectedMenuState
                          ? kPrimaryColor
                          : kPrimarySecondColor,
                      height: getProportionateScreenWidth(42),
                      width: SizeConfig.screenWidth * 0.112,
                      fit: BoxFit.fitHeight,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      "assets/icons/my_profile.svg",
                      color: MenuState.profile == selectedMenuState
                          ? kPrimaryColor
                          : kPrimarySecondColor,
                      height: getProportionateScreenWidth(42),
                      width: SizeConfig.screenWidth * 0.08,
                      fit: BoxFit.fitHeight,
                    )),
              ],
            ),
          )),
    );
  }
}
