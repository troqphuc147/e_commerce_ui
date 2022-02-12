import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:e_commerce_ui/components/add_to_bag_button.dart';
import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/models/product.dart';
import 'package:e_commerce_ui/screens/product/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../size_config.dart';

class FavoriteProductCard extends StatefulWidget {
  final FavoriteProduct product;
  const FavoriteProductCard({Key? key, required this.product})
      : super(key: key);

  @override
  State<FavoriteProductCard> createState() => _FavoriteProductCardState();
}

class _FavoriteProductCardState extends State<FavoriteProductCard> {
  bool delete = false;
  bool addToCart = false;
  @override
  Widget build(BuildContext context) {
    return delete == false && addToCart == false
        ? Container(
            height: SizeConfig.screenWidth * 280 / 375,
            width: SizeConfig.screenWidth * 150 / 375,
            margin: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(12)),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProductScreen(
                              product: widget.product.toProduct(),
                            )));
              },
              child: SingleChildScrollView(
                //physics: const NeverScrollableScrollPhysics(),
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: SizeConfig.screenWidth * 203 / 375,
                          width: SizeConfig.screenWidth * 148 / 375,
                          child: Stack(
                            children: [
                              Container(
                                height: SizeConfig.screenWidth * 184 / 375,
                                width: SizeConfig.screenWidth * 148 / 375,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(widget.product.image),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    if (widget.product.price !=
                                        widget.product.salePrice)
                                      Container(
                                        width: SizeConfig.screenWidth * 0.107,
                                        height: SizeConfig.screenWidth * 0.0642,
                                        margin: EdgeInsets.only(
                                            left:
                                                getProportionateScreenWidth(8),
                                            top: getProportionateScreenHeight(
                                                8)),
                                        decoration: BoxDecoration(
                                          color: kPrimaryColor,
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "-" +
                                                ((widget.product.price -
                                                            widget.product
                                                                .salePrice) /
                                                        widget.product.price *
                                                        100)
                                                    .toInt()
                                                    .toString() +
                                                "%",
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              if (!widget.product.isSoldOut)
                                Positioned(
                                    right: 0,
                                    bottom: getProportionateScreenWidth(7),
                                    child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            addToCart = true;
                                          });
                                        },
                                        child: const AddToBagButton())),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      RatingBar(
                                        initialRating:
                                            widget.product.getRating() / 2,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemSize:
                                            getProportionateScreenHeight(14),
                                        ratingWidget: RatingWidget(
                                            full: const Icon(
                                              Icons.star,
                                              color: Color(0xffFFBA49),
                                            ),
                                            half: const Icon(
                                              Icons.star_half,
                                              color: Color(0xffFFBA49),
                                            ),
                                            empty: const Icon(
                                              Icons.star_outline,
                                              color: Color(0xffFFBA49),
                                            )),
                                        onRatingUpdate: (value) {},
                                      ),
                                      Text(
                                        " (" +
                                            widget.product.rating.length
                                                .toString() +
                                            ")",
                                        style: TextStyle(
                                            color: kPrimarySecondColor,
                                            fontSize:
                                                getProportionateScreenHeight(
                                                    11)),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          widget.product.nameShop,
                          style: TextStyle(
                            color: kPrimarySecondColor,
                            fontSize: getProportionateScreenHeight(11),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          widget.product.nameProduct,
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text("Color: ", style: TextStyle(
                              fontSize: getProportionateScreenWidth(11),
                              color: kPrimarySecondColor,
                            ),),
                            Text(widget.product.color, style: TextStyle(
                              fontSize: getProportionateScreenWidth(11),
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),),
                            SizedBox(
                              width: getProportionateScreenWidth(30),
                            ),
                            Text("Size: ", style: TextStyle(
                              fontSize: getProportionateScreenWidth(11),
                              color: kPrimarySecondColor,
                            ),),
                            Text(widget.product.size, style: TextStyle(
                              fontSize: getProportionateScreenWidth(11),
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            if (widget.product.price !=
                                widget.product.salePrice)
                              Text(
                                widget.product.price.toInt().toString() + "\$",
                                style: TextStyle(
                                  color: kPrimarySecondColor,
                                  decoration: TextDecoration.lineThrough,
                                  fontSize: getProportionateScreenHeight(14),
                                ),
                              ),
                            if (widget.product.price !=
                                widget.product.salePrice)
                              const Text(" "),
                            Text(
                              widget.product.salePrice.toInt().toString() +
                                  "\$",
                              style: TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: getProportionateScreenHeight(14),
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        )
                      ],
                    ),
                    if (widget.product.isSoldOut)
                      Column(
                        children: [
                          BlurryContainer(
                            height: SizeConfig.screenWidth * 280 / 375,
                            width: SizeConfig.screenWidth * 150 / 375,
                            bgColor: Colors.grey.withOpacity(0.45),
                            borderRadius: BorderRadius.circular(15),
                            blur: 1,
                            padding: EdgeInsets.zero,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.75),
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15)),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: getProportionateScreenWidth(10),
                                  vertical: getProportionateScreenWidth(10)),
                              margin: EdgeInsets.only(
                                  top: getProportionateScreenWidth(138),
                                  bottom: getProportionateScreenWidth(96)),
                              child: Text(
                                "Sorry, this item is currently sold out",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: getProportionateScreenWidth(11),
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      ),
                    Positioned(
                        top: -getProportionateScreenWidth(7),
                        right: -getProportionateScreenWidth(7),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              delete = true;
                            });
                          },
                          icon: Icon(
                            Icons.close,
                            size: getProportionateScreenWidth(24),
                            color: kPrimarySecondColor,
                          ),
                        )),
                  ],
                ),
              ),
            ),
          )
        : const SizedBox(
            height: 0,
            width: 0,
          );
  }
}
