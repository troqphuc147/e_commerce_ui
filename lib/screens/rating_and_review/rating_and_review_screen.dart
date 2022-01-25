import 'package:e_commerce_ui/components/default_button.dart';
import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/models/Product.dart';
import 'package:e_commerce_ui/screens/rating_and_review/components/Body.dart';
import 'package:e_commerce_ui/screens/rating_and_review/components/write_review_screen.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RatingAndReview extends StatefulWidget {
  final ProductInfor productInfor;
  const RatingAndReview({Key? key, required this.productInfor})
      : super(key: key);

  @override
  _RatingAndReviewState createState() => _RatingAndReviewState();
}

class _RatingAndReviewState extends State<RatingAndReview> {
  bool showAppBarTitle = false;
  ScrollController _scrollController = new ScrollController();
  bool isScrollingDown = false;
  void myScroll() async {
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        setState(() {
          if (!isScrollingDown) {
            isScrollingDown = true;
            showAppBarTitle = true;
          }
        });
      }
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        setState(() {
          if (isScrollingDown) {
            isScrollingDown = false;
            showAppBarTitle = false;
          }
        });
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myScroll();
  }

  void dispose() {
    // TODO: implement dispose
    _scrollController.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 24,
            ),
          ),
          title: showAppBarTitle
              ? Text(
                  'Rating and reviews',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(14),
                  ),
                )
              : const Text(''),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Body(
                productInfor: widget.productInfor,
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          label: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.edit,
                color: Colors.white,
                size: getProportionateScreenWidth(13),
              ),
              Text(
                " Write a review",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: getProportionateScreenWidth(11),
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          backgroundColor: kPrimaryColor,
          onPressed: () {
            show(BuildContext context) {
              showModalBottomSheet<void>(
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (BuildContext context) {
                    return const WriteReviewScreen();
                  });
            }
          },
        ));
  }
}
