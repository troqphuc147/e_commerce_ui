import 'package:e_commerce_ui/components/default_button.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class AddShippingAddressScreen extends StatefulWidget {
  const AddShippingAddressScreen({Key? key}) : super(key: key);

  @override
  _AddShippingAddressScreenState createState() =>
      _AddShippingAddressScreenState();
}

class _AddShippingAddressScreenState extends State<AddShippingAddressScreen> {
  String fullName = "";
  String address = "";
  String city = "";
  String state = "";
  String zipCode = "";
  String country = "";
  late List<String> listArg;
  List<String> listHint = [
    "Enter full name",
    "Enter address",
    "Enter city",
    "Enter State/Province/Region",
    "Enter zip code",
    "Enter country"
  ];
  List<String> listLabel = [
    "Full name",
    "Address",
    "City",
    "State/Province/Region",
    "Zip code",
    "Country"
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    listArg = [fullName, address, city, state, zipCode, country];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 4.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: getProportionateScreenWidth(24),
          ),
        ),
        title: Text(
          "Adding Shipping Address",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ...List.generate(
                  listArg.length,
                  (index) => Container(
                      margin: EdgeInsets.symmetric(
                          vertical: getProportionateScreenWidth(10)),
                      child: defautlFormField(
                          listArg[index], listHint[index], listLabel[index]))),
              SizedBox(
                height: getProportionateScreenWidth(20),
              ),
              DefaultButton(
                text: "Add Address",
                onPress: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(
                height: getProportionateScreenWidth(20),
              ),
            ],
          ),
        ),
      ),
    );
  }

  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(0),
    borderSide: const BorderSide(color: Color(0xFF757575)),
    gapPadding: 10,
  );
  TextFormField defautlFormField(String initValue, String hint, String label) {
    return TextFormField(
      initialValue: initValue,
      obscureText: false,
      onChanged: (value) {
        setState(() {
          initValue = value;
        });
      },
      decoration: InputDecoration(
        hintText: hint,
        label: Text(
          label,
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
