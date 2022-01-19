import 'package:e_commerce_ui/models/category.dart';
import 'package:e_commerce_ui/screens/shop/components/page_categories.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: const Color(0xffffffff),
              child: TabBar(
                  labelPadding: const EdgeInsets.symmetric(vertical: 14),
                  indicatorColor: kPrimaryColor,
                  controller: tabController,
                  indicatorWeight: 3,
                  tabs: [
                    Text(
                      "Woman",
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(16),
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    Text(
                      "Man",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(16),
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Kids",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(16),
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ]),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: PageCategories(
                listCategory: listCategories,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
