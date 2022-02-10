import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class PickSize extends StatefulWidget {
  const PickSize({Key? key}) : super(key: key);

  @override
  _PickSizeState createState() => _PickSizeState();
}

class _PickSizeState extends State<PickSize> {
  String size = "Size";
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        show(context);
      },
      child: Container(
        width: getProportionateScreenWidth(138),
        height: getProportionateScreenWidth(40),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: kSecondaryColor, width: 1.5),
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              size,
              style: TextStyle(fontSize: getProportionateScreenWidth(14)),
            ),
            Icon(
              Icons.arrow_drop_down_outlined,
              color: Colors.black,
              size: getProportionateScreenWidth(16),
            )
          ],
        ),
      ),
    );
  }

  void show(BuildContext context) {
    showModalBottomSheet<void>(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: getProportionateScreenWidth(280),
          decoration: const BoxDecoration(
              color: Color(0xfff5f4f4),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50))),
          child: ButtonTheme(
              height: getProportionateScreenWidth(280),
              child: Column(
                children: [
                  SizedBox(
                    height: getProportionateScreenWidth(14),
                  ),
                  Container(
                    width: getProportionateScreenWidth(60),
                    height: getProportionateScreenWidth(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: kPrimarySecondColor,
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenWidth(15),
                  ),
                  Text(
                    "Select size",
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(18),
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: getProportionateScreenWidth(20),
                  ),
                  Wrap(
                    alignment: WrapAlignment.start,
                    children: [
                      ProductSize(
                          s: "XS",
                          size: size,
                          onPressed: () {
                            setState(() {
                              size = "Size: XS";
                            });
                            Navigator.pop(context);
                          }),
                      ProductSize(
                          s: "S",
                          size: size,
                          onPressed: () {
                            setState(() {
                              size = "Size: S";
                            });
                            Navigator.pop(context);
                          }),
                      ProductSize(
                          s: "M",
                          size: size,
                          onPressed: () {
                            setState(() {
                              size = "Size: M";
                            });
                            Navigator.pop(context);
                          }),
                      ProductSize(
                          s: "L",
                          size: size,
                          onPressed: () {
                            setState(() {
                              size = "Size: L";
                            });
                            Navigator.pop(context);
                          }),
                      ProductSize(
                          s: "XL",
                          size: size,
                          onPressed: () {
                            setState(() {
                              size = "Size: XL";
                            });
                            Navigator.pop(context);
                          }),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenWidth(10),
                  ),
                  Divider(
                    thickness: getProportionateScreenWidth(1),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20),
                        vertical: getProportionateScreenWidth(13)),
                    child: GestureDetector(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Size detail',
                            style: TextStyle(
                                fontSize: getProportionateScreenWidth(14)),
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: Colors.black,
                            size: getProportionateScreenWidth(16),
                          )
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    thickness: getProportionateScreenWidth(1),
                  ),
                ],
              )),
        );
      },
    );
  }
}

class ProductSize extends StatefulWidget {
  final String s;
  final String size;
  final VoidCallback onPressed;

  const ProductSize(
      {Key? key, required this.s, required this.onPressed, required this.size})
      : super(key: key);

  @override
  State<ProductSize> createState() => _ProductSizeState();
}

class _ProductSizeState extends State<ProductSize> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        height: getProportionateScreenWidth(40),
        width: getProportionateScreenWidth(100),
        margin: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(10),
            vertical: getProportionateScreenWidth(8)),
        decoration: BoxDecoration(
          border: Border.all(color: kSecondaryColor),
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            widget.s,
            style: TextStyle(
              fontWeight: widget.size == "Size: " + widget.s
                  ? FontWeight.w900
                  : FontWeight.normal,
              color: Colors.black,
              fontSize: getProportionateScreenWidth(14),
            ),
          ),
        ),
      ),
    );
  }
}
