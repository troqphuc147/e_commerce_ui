import 'package:e_commerce_ui/models/category.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class CategoryCart extends StatefulWidget {
  final Category category;
  final Function() onPressed;
  const CategoryCart({
    Key? key,
    required this.category,
    required this.onPressed,
  }) : super(key: key);

  @override
  _CategoryCartState createState() => _CategoryCartState();
}

class _CategoryCartState extends State<CategoryCart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: widget.onPressed,
        child: Container(
          margin: EdgeInsets.only(top: getProportionateScreenWidth(20)),
          height: getProportionateScreenWidth(100),
          width: double.infinity,
          padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.category.category,
                style: TextStyle(fontSize: getProportionateScreenWidth(14)),
              ),
              Container(
                width: SizeConfig.screenWidth / 2 - 20,
                height: getProportionateScreenWidth(100),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      widget.category.images,
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
