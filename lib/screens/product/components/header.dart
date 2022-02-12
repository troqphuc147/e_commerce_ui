import 'package:e_commerce_ui/models/product.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  final ProductInfor productInfor;
  const Header({Key? key, required this.productInfor}) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(413),
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ...List.generate(
                widget.productInfor.listImages.length + 1,
                (index) => Container(
                      height: getProportionateScreenWidth(413),
                      width: getProportionateScreenWidth(275),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                index == 0
                                    ? widget.productInfor.product.image
                                    : widget.productInfor.listImages[index-1],
                              ),
                              fit: BoxFit.cover)),
                    ))
          ],
        ),
      ),
    );
  }
}
