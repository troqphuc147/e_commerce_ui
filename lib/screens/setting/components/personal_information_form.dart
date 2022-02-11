import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PersonalInformationForm extends StatefulWidget {
  const PersonalInformationForm({Key? key}) : super(key: key);

  @override
  _PersonalInformationFormState createState() =>
      _PersonalInformationFormState();
}

class _PersonalInformationFormState extends State<PersonalInformationForm> {
  String name = "";
  DateTime birthDay = DateTime(2022, 1, 1);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Personal Information",
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: getProportionateScreenWidth(16)),
        ),
        SizedBox(
          height: getProportionateScreenWidth(20),
        ),
        nameFormField(),
        SizedBox(
          height: getProportionateScreenWidth(20),
        ),
        birthDayFormField(),
      ],
    );
  }

  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(0),
    borderSide: const BorderSide(color: Color(0xFF757575)),
    gapPadding: 10,
  );
  TextFormField nameFormField() {
    return TextFormField(
      initialValue: name,
      obscureText: false,
      onChanged: (value) {
        setState(() {
          name = value;
        });
      },
      decoration: InputDecoration(
        hintText: "Full name",
        hintStyle: TextStyle(
            fontSize: getProportionateScreenWidth(14),
            color: kPrimarySecondColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        border: outlineInputBorder,
      ),
      style: TextStyle(
          fontSize: getProportionateScreenWidth(14),
          color: Colors.black),
    );
  }

  TextFormField birthDayFormField() {
    return TextFormField(
      initialValue: DateFormat("dd/MM/yyyy").format(birthDay).toString(),
      onChanged: (value) {},
      decoration: InputDecoration(
        label: Text(
          "Date of birth",
          style: TextStyle(
            color: kPrimarySecondColor,
            fontSize: getProportionateScreenWidth(11),
          ),
        ),
        hintText: "Birthday",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        border: outlineInputBorder,
      ),
      style: TextStyle(
          fontSize: getProportionateScreenWidth(14),
          color: Colors.black),
    );
  }
}
