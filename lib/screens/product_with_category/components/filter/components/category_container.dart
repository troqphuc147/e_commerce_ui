import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class CategoryContainer extends StatefulWidget {
  final String category;
  CategoryContainer({Key? key, required this.category}) : super(key: key);

  @override
  _CategoryContainerState createState() => _CategoryContainerState();
}

class _CategoryContainerState extends State<CategoryContainer> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        height: getProportionateScreenWidth(40),
        width: getProportionateScreenWidth(100),
        decoration: BoxDecoration(
            color: isSelected ? kPrimaryColor : Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: kPrimarySecondColor)),
        child: Center(
          child: Text(
            widget.category,
            style: TextStyle(
                fontSize: getProportionateScreenWidth(14),
                color: isSelected ? Colors.white : Colors.black),
          ),
        ),
      ),
    );
  }
}
