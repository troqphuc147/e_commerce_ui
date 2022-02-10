
import 'package:e_commerce_ui/screens/home/components/new_product.dart';
import 'package:e_commerce_ui/screens/home/components/sale_product.dart';
import 'package:e_commerce_ui/screens/home/components/small_banner.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SmallBanner(),
            Padding(
              padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: SizeConfig.screenWidth * 20 / 375,
                  ),
                  SizedBox(
                      height: SizeConfig.screenWidth * 340 / 375,
                      child: const SaleProduct()),
                  SizedBox(
                      height: SizeConfig.screenWidth * 340 / 375,
                      child: const NewProduct()),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
