import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/models/product.dart';
import 'package:e_commerce_ui/screens/product/product_screen.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductInBagCart extends StatefulWidget {
  ProductInBag productInBag;
  ProductInBagCart({Key? key, required this.productInBag}) : super(key: key);

  @override
  _ProductInBagCartState createState() => _ProductInBagCartState();
}

class _ProductInBagCartState extends State<ProductInBagCart> {
  bool delete = false;

  @override
  Widget build(BuildContext context) {
    return !delete
        ? GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ProductScreen(product: widget.productInBag.product)));
            },
            child: Container(
              height: getProportionateScreenWidth(104),
              width: double.infinity,
              margin: EdgeInsets.symmetric(
                  vertical: getProportionateScreenWidth(16),
                  horizontal: getProportionateScreenWidth(2)),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.45),
                        offset: const Offset(2, 2),
                        blurRadius: 4),
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.45),
                        offset: const Offset(-2, -2),
                        blurRadius: 4),
                  ]),
              child: Row(
                children: [
                  Container(
                    height: getProportionateScreenWidth(104),
                    width: getProportionateScreenWidth(104),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage(widget.productInBag.image),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    width: getProportionateScreenWidth(224),
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(11),
                        vertical: getProportionateScreenWidth(11)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              widget.productInBag.product.nameProduct,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: getProportionateScreenWidth(16),
                              ),
                            ),
                            PopupMenuButton(
                              itemBuilder: (context) => [
                                PopupMenuItem(
                                    child: Center(
                                  child: Text(
                                    "Add to favorites",
                                    style: TextStyle(
                                        fontSize:
                                            getProportionateScreenWidth(11)),
                                  ),
                                )),
                                PopupMenuItem(
                                    onTap: () {
                                      setState(() {
                                        delete = true;
                                      });
                                    },
                                    child: Center(
                                      child: Text(
                                        "Delete from the list",
                                        style: TextStyle(
                                            fontSize:
                                                getProportionateScreenWidth(
                                                    11)),
                                      ),
                                    )),
                              ],
                              child: Icon(
                                Icons.menu,
                                color: kPrimarySecondColor,
                                size: getProportionateScreenWidth(16),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Color: ",
                              style: TextStyle(
                                fontSize: getProportionateScreenWidth(11),
                                color: kPrimarySecondColor,
                              ),
                            ),
                            Text(
                              widget.productInBag.color,
                              style: TextStyle(
                                fontSize: getProportionateScreenWidth(11),
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: getProportionateScreenWidth(30),
                            ),
                            Text(
                              "Size: ",
                              style: TextStyle(
                                fontSize: getProportionateScreenWidth(11),
                                color: kPrimarySecondColor,
                              ),
                            ),
                            Text(
                              widget.productInBag.size,
                              style: TextStyle(
                                fontSize: getProportionateScreenWidth(11),
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      widget.productInBag.setAmount(
                                          widget.productInBag.amount - 1);
                                    });
                                  },
                                  child: Container(
                                      height: getProportionateScreenWidth(36),
                                      width: getProportionateScreenWidth(36),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          boxShadow: [
                                            BoxShadow(
                                              offset: const Offset(0, -1),
                                              color:
                                                  Colors.grey.withOpacity(0.45),
                                              blurRadius: 4,
                                            ),
                                            BoxShadow(
                                              offset: const Offset(0, 1),
                                              color:
                                                  Colors.grey.withOpacity(0.45),
                                              blurRadius: 4,
                                            ),
                                          ]),
                                      child: Center(
                                        child: SvgPicture.asset(
                                            "assets/icons/decre.svg"),
                                      )),
                                ),
                                SizedBox(
                                  width: getProportionateScreenWidth(15),
                                ),
                                Text(
                                  widget.productInBag.amount.toString(),
                                  style: TextStyle(
                                      fontSize: getProportionateScreenWidth(14),
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: getProportionateScreenWidth(15),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      widget.productInBag.setAmount(
                                          widget.productInBag.amount + 1);
                                    });
                                  },
                                  child: Container(
                                      height: getProportionateScreenWidth(36),
                                      width: getProportionateScreenWidth(36),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          boxShadow: [
                                            BoxShadow(
                                              offset: const Offset(0, -1),
                                              color:
                                                  Colors.grey.withOpacity(0.45),
                                              blurRadius: 4,
                                            ),
                                            BoxShadow(
                                              offset: const Offset(0, 1),
                                              color:
                                                  Colors.grey.withOpacity(0.45),
                                              blurRadius: 4,
                                            ),
                                          ]),
                                      child: Center(
                                        child: SvgPicture.asset(
                                            "assets/icons/incre.svg"),
                                      )),
                                ),
                              ],
                            ),
                            Text(
                              widget.productInBag.totalPrice
                                      .toInt()
                                      .toString() +
                                  "\$",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: getProportionateScreenWidth(14)),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        : const SizedBox();
  }
}
