import 'package:e_commerce_ui/components/default_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class AddPaymentButton extends StatefulWidget {
  const AddPaymentButton({Key? key}) : super(key: key);

  @override
  _AddPaymentButtonState createState() => _AddPaymentButtonState();
}

class _AddPaymentButtonState extends State<AddPaymentButton> {
  String nameOnCard = "";
  String cardNumber = "";
  String expireDay = "";
  String cvv = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        show(context);
      },
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
    );
  }

  bool isMasterCard = true;
  String logoPass = "assets/images/masterlogo.png";
  show(BuildContext context) {
    bool isSetDefault = true;
    showModalBottomSheet<void>(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(builder: (context, setState) {
          return Container(
            height: getProportionateScreenWidth(500),
            decoration: const BoxDecoration(
                color: Color(0xfff5f4f4),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50))),
            child: ButtonTheme(
                height: getProportionateScreenWidth(500),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
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
                        "Add new card",
                        style: TextStyle(
                            fontSize: getProportionateScreenWidth(18),
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: getProportionateScreenWidth(30),
                      ),
                      nameOnCardFormField(),
                      SizedBox(
                        height: getProportionateScreenWidth(20),
                      ),
                      Stack(
                        children: [
                          cardNumberFormField(),
                          Positioned(
                            right: 0,
                            bottom: getProportionateScreenWidth(13),
                            child: GestureDetector(
                              onTap: () => setState(() {
                                isMasterCard = !isMasterCard;
                                logoPass = isMasterCard
                                    ? "assets/images/masterlogo.png"
                                    : "assets/images/visalogo.png";
                              }),
                              child: Container(
                                height: getProportionateScreenWidth(25),
                                width: getProportionateScreenWidth(50),
                                margin: EdgeInsets.only(right: getProportionateScreenWidth(10)),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    image: DecorationImage(
                                        image: AssetImage(
                                          logoPass,
                                        ))),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: getProportionateScreenWidth(20),
                      ),
                      expireDayFormField(),
                      SizedBox(
                        height: getProportionateScreenWidth(20),
                      ),
                      cvvFormField(),
                      SizedBox(
                        height: getProportionateScreenWidth(20),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSetDefault = !isSetDefault;
                          });
                        },
                        child: Row(
                          children: [
                            isSetDefault
                                ? SvgPicture.asset(
                                    "assets/icons/checkbox_on.svg")
                                : SvgPicture.asset(
                                    "assets/icons/checkbox_off.svg"),
                            Text(
                              "   Use as default payment method",
                              style: TextStyle(
                                  fontSize: getProportionateScreenWidth(14)),
                            )
                          ],
                        ),
                      ),
                      const Spacer(),
                      DefaultButton(
                        text: "ADD CARD",
                        onPress: () {
                          Navigator.pop(context);
                        },
                      ),
                      SizedBox(
                        height: getProportionateScreenWidth(20),
                      ),
                    ],
                  ),
                )),
          );
        });
      },
    );
  }

  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(0),
    borderSide: const BorderSide(color: Color(0xFF757575)),
    gapPadding: 10,
  );
  TextFormField nameOnCardFormField() {
    return TextFormField(
      initialValue: nameOnCard,
      obscureText: false,
      onChanged: (value) {
        setState(() {
          nameOnCard = value;
        });
      },
      decoration: InputDecoration(
        hintText: "Enter name on card",
        label: Text(
          "Name on card",
          style: TextStyle(
            color: kPrimarySecondColor,
            fontSize: getProportionateScreenWidth(11),
          ),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        border: outlineInputBorder,
      ),
      style: TextStyle(
          fontSize: getProportionateScreenWidth(14), color: Colors.black),
    );
  }

  Widget cardNumberFormField() {
    return TextFormField(
      initialValue: cardNumber,
      obscureText: false,
      onChanged: (value) {
        setState(() {
          cardNumber = value;
        });
      },
      decoration: InputDecoration(
        hintText: "Enter card number",
        label: Text(
          "Card number",
          style: TextStyle(
            color: kPrimarySecondColor,
            fontSize: getProportionateScreenWidth(11),
          ),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        border: outlineInputBorder,
      ),
      style: TextStyle(
          fontSize: getProportionateScreenWidth(14), color: Colors.black),
    );
  }

  TextFormField expireDayFormField() {
    return TextFormField(
      initialValue: expireDay,
      obscureText: false,
      onChanged: (value) {
        setState(() {
          expireDay = value;
        });
      },
      decoration: InputDecoration(
        hintText: "Enter expire Date",
        label: Text(
          "Expire date",
          style: TextStyle(
            color: kPrimarySecondColor,
            fontSize: getProportionateScreenWidth(11),
          ),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        border: outlineInputBorder,
      ),
      style: TextStyle(
          fontSize: getProportionateScreenWidth(14), color: Colors.black),
    );
  }
  TextFormField cvvFormField() {
    return TextFormField(
      initialValue: cvv,
      obscureText: false,
      onChanged: (value) {
        setState(() {
          cvv = value;
        });
      },
      decoration: InputDecoration(
        alignLabelWithHint: true,
        hintText: "Enter CVV",
        suffixIcon: Icon(
          Icons.help_outline,
          size: getProportionateScreenWidth(24),
          color: kPrimarySecondColor,
        ),
        label: Text(
          "CVV",
          style: TextStyle(
            color: kPrimarySecondColor,
            fontSize: getProportionateScreenWidth(11),
          ),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        border: outlineInputBorder,
      ),
      style: TextStyle(
          fontSize: getProportionateScreenWidth(14), color: Colors.black),
    );
  }
}
