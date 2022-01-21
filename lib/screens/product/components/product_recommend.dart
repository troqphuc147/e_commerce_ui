import 'package:e_commerce_ui/components/new_product_cart.dart';
import 'package:e_commerce_ui/components/product_cart.dart';
import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/models/Product.dart';
import 'package:e_commerce_ui/screens/home/components/sale_product.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class ProductRecommend extends StatefulWidget {
  const ProductRecommend({Key? key}) : super(key: key);

  @override
  _ProductRecommendState createState() => _ProductRecommendState();
}

class _ProductRecommendState extends State<ProductRecommend> {
  List<Product> listPrd = [
    listSaleProduct[0],
    listNewProduct[0],
    listNewProduct[1],
    listSaleProduct[1],
    listNewProduct[0],
    listNewProduct[2],
    listSaleProduct[2],
    listNewProduct[2],
    listSaleProduct[0],
    listNewProduct[0],
    listNewProduct[1],
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        height: getProportionateScreenWidth(310),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'You can also like this',
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(18),
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  (listPrd.length + 1).toString() + " items",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(11),
                    color: kPrimarySecondColor,
                  ),
                )
              ],
            ),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ProductCard(product: listPrd[0]),
                  NewProductCard(product: listPrd[1]),
                  NewProductCard(product: listPrd[2]),
                  ProductCard(product: listPrd[3]),
                  NewProductCard(product: listPrd[4]),
                  NewProductCard(product: listPrd[5]),
                  ProductCard(product: listPrd[6]),
                  NewProductCard(product: listPrd[7]),
                  NewProductCard(product: listPrd[8]),
                  ProductCard(product: listPrd[9]),
                  NewProductCard(product: listPrd[10]),
                ],
              ),
            ),
          ],
        ));
  }
}
