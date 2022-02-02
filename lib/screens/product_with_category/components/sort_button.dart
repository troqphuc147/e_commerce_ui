import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';
class SortButton extends StatefulWidget {
  String sort;
   SortButton({Key? key, required this.sort}) : super(key: key);

  @override
  _SortButtonState createState() => _SortButtonState();
}

class _SortButtonState extends State<SortButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        show(context);
        setState(() {

        });
      },
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/sort.svg"),
          SizedBox(
            width: getProportionateScreenWidth(5),
          ),
          Text(
            widget.sort,
            style: TextStyle(fontSize: getProportionateScreenWidth(11)),
          )
        ],
      ),
    );
  }
  show(BuildContext context) {
    showModalBottomSheet<void>(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: getProportionateScreenWidth(352),
          decoration: const BoxDecoration(
              color: Color(0xfff5f4f4),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50))),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
                vertical: getProportionateScreenWidth(15)),
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
                      "Sort by",
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(18),
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: getProportionateScreenWidth(20),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          widget.sort = "Popular";
                        });
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: double.infinity,
                        height: getProportionateScreenWidth(48),
                        padding: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(20)),
                        color: widget.sort == "Popular"
                            ? kPrimaryColor
                            : Colors.transparent,
                        child: Row(
                          children: [
                            Text(
                              "Popular",
                              style: TextStyle(
                                  color: widget.sort == "Popular"
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: getProportionateScreenWidth(16)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          widget.sort = "Newest";
                        });
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: double.infinity,
                        height: getProportionateScreenWidth(48),
                        padding: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(20)),
                        color:
                        widget.sort == "Newest" ? kPrimaryColor : Colors.transparent,
                        child: Row(
                          children: [
                            Text(
                              "Newest",
                              style: TextStyle(
                                  color: widget.sort == "Newest"
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: getProportionateScreenWidth(16)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          widget.sort = "Customer review";
                        });
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: double.infinity,
                        height: getProportionateScreenWidth(48),
                        padding: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(20)),
                        color: widget.sort == "Customer review"
                            ? kPrimaryColor
                            : Colors.transparent,
                        child: Row(
                          children: [
                            Text(
                              "Customer review",
                              style: TextStyle(
                                  color: widget.sort == "Customer review"
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: getProportionateScreenWidth(16)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          widget.sort = "Price: lowest to high";
                        });
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: double.infinity,
                        height: getProportionateScreenWidth(48),
                        padding: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(20)),
                        color: widget.sort == "Price: lowest to high"
                            ? kPrimaryColor
                            : Colors.transparent,
                        child: Row(
                          children: [
                            Text(
                              "Price: lowest to high",
                              style: TextStyle(
                                  color: widget.sort == "Price: lowest to high"
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: getProportionateScreenWidth(16)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          widget.sort = "Price: highest to low";
                        });
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: double.infinity,
                        height: getProportionateScreenWidth(48),
                        padding: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(20)),
                        color: widget.sort == "Price: highest to low"
                            ? kPrimaryColor
                            : Colors.transparent,
                        child: Row(
                          children: [
                            Text(
                              "Price: highest to low",
                              style: TextStyle(
                                  color: widget.sort == "Price: highest to low"
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: getProportionateScreenWidth(16)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        );
      },
    );
  }
}
