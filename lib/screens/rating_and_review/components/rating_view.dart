import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/models/product.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class RatingView extends StatefulWidget {
  final ProductInfor productInfor;
  const RatingView({Key? key, required this.productInfor}) : super(key: key);

  @override
  _RatingViewState createState() => _RatingViewState();
}

class _RatingViewState extends State<RatingView> {
  late List<int> listNumOfEachLevelRating;
  int max = 0;
  void getMostRating() {
    for (var e in listNumOfEachLevelRating) {
      if (e > max) max = e;
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    listNumOfEachLevelRating = widget.productInfor.product.getNumOfEachLevel();
    getMostRating();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Rating&Reviews",
          style: TextStyle(
              color: Colors.black,
              fontSize: getProportionateScreenWidth(34),
              fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: getProportionateScreenWidth(20),
        ),
        Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  (widget.productInfor.product.getRating() / 2)
                      .toStringAsFixed(1),
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(44),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  widget.productInfor.product.rating.length.toString() +
                      " ratings",
                  style: TextStyle(
                    color: kPrimarySecondColor,
                    fontSize: getProportionateScreenWidth(14),
                  ),
                )
              ],
            ),
            SizedBox(
              width: getProportionateScreenWidth(20),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ...List.generate(
                    5,
                    (index) => Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ...List.generate(
                              5 - index,
                              (index) => Icon(
                                Icons.star,
                                color: const Color(0xffFFBA49),
                                size: getProportionateScreenWidth(14),
                              ),
                            ),
                          ],
                        )),
              ],
            ),
            SizedBox(
              width: getProportionateScreenWidth(8),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...List.generate(
                    5,
                    (index) => Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 3),
                              height: getProportionateScreenWidth(8),
                              width: getProportionateScreenWidth(
                                  listNumOfEachLevelRating[4 - index] /
                                      max *
                                      114),
                              decoration: BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                          ],
                        )),
              ],
            ),
            SizedBox(
              width: getProportionateScreenWidth(20),
            ),
            Column(
              children: [
                ...List.generate(
                    5,
                    (index) => Text(
                          listNumOfEachLevelRating[4 - index].toString(),
                          style: TextStyle(
                              color: kSecondaryColor,
                              fontSize: getProportionateScreenWidth(14)),
                        ))
              ],
            )
          ],
        )
      ],
    );
  }
}
