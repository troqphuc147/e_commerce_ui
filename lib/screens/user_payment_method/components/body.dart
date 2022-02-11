import 'package:e_commerce_ui/screens/user_payment_method/components/master_card.dart';
import 'package:e_commerce_ui/screens/user_payment_method/components/visa_card.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatefulWidget {
  int methodSelected;
  Body({Key? key,required this.methodSelected}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        getProportionateScreenWidth(10),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(10)),
              child: Text(
                "Your payment cards",
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(16),
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            const MasterCard(),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: getProportionateScreenWidth(10),
                  horizontal: getProportionateScreenWidth(10)),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    widget.methodSelected = 1 - widget.methodSelected;
                  });
                },
                child: Row(
                  children: [
                    widget.methodSelected == 0
                        ? SvgPicture.asset("assets/icons/checkbox_on.svg")
                        : SvgPicture.asset("assets/icons/checkbox_off.svg"),
                    Text(
                      "   Use as default payment method",
                      style:
                          TextStyle(fontSize: getProportionateScreenWidth(14)),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenWidth(10),
            ),
            const VisaCard(),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: getProportionateScreenWidth(10),
                  horizontal: getProportionateScreenWidth(10)),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    widget.methodSelected = 1 - widget.methodSelected;
                  });
                },
                child: Row(
                  children: [
                    widget.methodSelected == 1
                        ? SvgPicture.asset("assets/icons/checkbox_on.svg")
                        : SvgPicture.asset("assets/icons/checkbox_off.svg"),
                    Text(
                      "   Use as default payment method",
                      style:
                          TextStyle(fontSize: getProportionateScreenWidth(14)),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(getProportionateScreenWidth(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                        height: getProportionateScreenWidth(36),
                        width: getProportionateScreenWidth(36),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: getProportionateScreenWidth(24),
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
