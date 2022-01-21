import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PickColor extends StatefulWidget {
  const PickColor({Key? key}) : super(key: key);

  @override
  _PickColorState createState() => _PickColorState();
}

class _PickColorState extends State<PickColor> {
  Color cl = Colors.black;
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
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Color:  ',
              style: TextStyle(fontSize: getProportionateScreenWidth(14)),
            ),
            Container(
              height: getProportionateScreenWidth(20),
              width: getProportionateScreenWidth(20),
              decoration: BoxDecoration(
                  color: cl,
                  border: Border.all(
                      color: kPrimarySecondColor),
              ),
            ),
            const Spacer(),
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
                    "Select Color",
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
                      ProductColor(
                          newCl: Colors.black,
                          cl: cl,
                          text: "Black",
                          onPressed: () {
                            setState(() {
                              cl = Colors.black;
                            });
                            Navigator.pop(context);
                          }),
                      ProductColor(
                          newCl: Colors.white,
                          cl: cl,
                          text: "White",
                          onPressed: () {
                            setState(() {
                              cl = Colors.white;
                            });
                            Navigator.pop(context);
                          }),
                      ProductColor(
                          newCl: Colors.purple,
                          cl: cl,
                          text: "Purple",
                          onPressed: () {
                            setState(() {
                              cl = Colors.purple;
                            });
                            Navigator.pop(context);
                          }),
                      ProductColor(
                          newCl: Colors.red,
                          cl: cl,
                          text: "Red",
                          onPressed: () {
                            setState(() {
                              cl = Colors.red;
                            });
                            Navigator.pop(context);
                          }),
                      ProductColor(
                          newCl: Colors.orange,
                          cl: cl,
                          text: "Orange",
                          onPressed: () {
                            setState(() {
                              cl = Colors.orange;
                            });
                            Navigator.pop(context);
                          }),
                      ProductColor(
                          newCl: Colors.green,
                          cl: cl,
                          text: "Green",
                          onPressed: () {
                            setState(() {
                              cl = Colors.green;
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
                            'Require more color',
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

class ProductColor extends StatefulWidget {
  final Color newCl;
  final Color cl;
  final String text;
  final VoidCallback onPressed;

  const ProductColor(
      {Key? key,
      required this.newCl,
      required this.onPressed,
      required this.cl,
      required this.text})
      : super(key: key);

  @override
  State<ProductColor> createState() => _ProductColorState();
}

class _ProductColorState extends State<ProductColor> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        height: getProportionateScreenWidth(40),
        width: getProportionateScreenWidth(100),
        child: Row(
          children: [
            Container(
              height: getProportionateScreenWidth(20),
              width: getProportionateScreenWidth(20),
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(10),
                  vertical: getProportionateScreenWidth(8)),
              decoration: BoxDecoration(
                border: Border.all(
                    color: widget.newCl == widget.cl
                        ? kPrimaryColor
                        : kPrimarySecondColor,
                    width: 1.5),
                color: widget.newCl,
              ),
            ),
            Text(
              "  " + widget.text,
              style: TextStyle(
                color: widget.newCl == Colors.white?Colors.black:widget.newCl,
                fontSize: getProportionateScreenWidth(12),
                fontWeight: widget.newCl == widget.cl
                    ? FontWeight.w700
                    : FontWeight.normal,
              ),
            )
          ],
        ),
      ),
    );
  }
}
