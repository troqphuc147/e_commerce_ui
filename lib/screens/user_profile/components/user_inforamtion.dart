import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/models/user_profile.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class UserInformation extends StatefulWidget {
  const UserInformation({Key? key}) : super(key: key);

  @override
  _UserInformationState createState() => _UserInformationState();
}

class _UserInformationState extends State<UserInformation> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: getProportionateScreenWidth(64),
            width: getProportionateScreenWidth(64),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    myProfile.avatar,
                  ),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(20),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                myProfile.name,
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(18),
                    fontWeight: FontWeight.w600),
              ),
              Text(
                myProfile.email,
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(14),
                    color: kPrimarySecondColor),
              ),
            ],
          )
        ],
      ),
    );
  }
}
