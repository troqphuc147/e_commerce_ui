import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/models/Comment.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:intl/intl.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommentDialog extends StatefulWidget {
  final Comment comment;
  const CommentDialog({Key? key, required this.comment}) : super(key: key);

  @override
  _CommentDialogState createState() => _CommentDialogState();
}

class _CommentDialogState extends State<CommentDialog> {
  bool like = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: getProportionateScreenWidth(20)),
      width: double.infinity,
      height: ((widget.comment.comment.length ~/
                      (getProportionateScreenWidth(267) /
                          getProportionateScreenWidth(6.512))) +
                  1) *
              getProportionateScreenWidth(11 * getProportionateScreenWidth(1.48)) +
          getProportionateScreenWidth(120),
      child: Stack(
        children: [
          Positioned(
            top: getProportionateScreenWidth(10),
            left: getProportionateScreenWidth(16),
            child: Container(
              width: getProportionateScreenWidth(311),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20),
                    vertical: getProportionateScreenWidth(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      widget.comment.customer.userName,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: getProportionateScreenWidth(14),
                          fontWeight: FontWeight.w600),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RatingBar(
                          initialRating: widget.comment.rating.toDouble(),
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: getProportionateScreenHeight(14),
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
                          DateFormat("dd-MM-yyyy")
                              .format(widget.comment.dateTime)
                              .toString(),
                          style: TextStyle(
                              color: kPrimarySecondColor,
                              fontSize: getProportionateScreenWidth(11)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: getProportionateScreenWidth(10),
                    ),
                    Wrap(
                      children: [
                        Text(
                          widget.comment.comment,
                          style: TextStyle(
                              color: kPrimarySecondColor,
                              fontSize: getProportionateScreenWidth(14),
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    SizedBox(
                      height: getProportionateScreenWidth(10),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Helpful",
                          style: TextStyle(
                            color: kPrimarySecondColor,
                            fontSize: getProportionateScreenWidth(11),
                          ),
                        ),
                        SizedBox(
                          width: getProportionateScreenWidth(10),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              like = !like;
                            });
                          },
                          child: SvgPicture.asset(
                            "assets/icons/thumb_up.svg",
                            fit: BoxFit.cover,
                            color: like ? Colors.blue : kPrimarySecondColor,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: getProportionateScreenWidth(32),
            width: getProportionateScreenWidth(32),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                    image: AssetImage(widget.comment.customer.avatar),
                    fit: BoxFit.cover)),
          ),
        ],
      ),
    );
  }
}
