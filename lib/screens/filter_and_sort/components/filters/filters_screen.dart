import 'package:e_commerce_ui/screens/filter_and_sort/components/filters/components/bottom_buttons.dart';
import 'package:e_commerce_ui/screens/filter_and_sort/components/filters/components/brand.dart';
import 'package:e_commerce_ui/screens/filter_and_sort/components/filters/components/category.dart';
import 'package:e_commerce_ui/screens/filter_and_sort/components/filters/components/price.dart';
import 'package:e_commerce_ui/screens/filter_and_sort/components/filters/components/size.dart';
import 'package:e_commerce_ui/screens/filter_and_sort/components/filters/components/color.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          color: Colors.black,
          icon: Icon(
            Icons.arrow_back_ios,
            size: getProportionateScreenWidth(24),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Filters",
          style: TextStyle(
              color: Colors.black,
              fontSize: getProportionateScreenWidth(18),
              fontWeight: FontWeight.w600),
        ),
        elevation: 5.0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              PriceFilter(),
              ColorFilter(),
              SizeFilter(),
              CategoryFilter(),
              BrandFilter(),
            ],
          ),
        ),
      ),
      bottomSheet: const BottomButtons(),
    );
  }
}
