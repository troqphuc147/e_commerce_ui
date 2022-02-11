import 'package:e_commerce_ui/screens/setting/setting_screen.dart';
import 'package:e_commerce_ui/screens/user_order/user_order_screen.dart';
import 'package:e_commerce_ui/screens/user_profile/components/main_button.dart';
import 'package:e_commerce_ui/screens/user_profile/components/user_inforamtion.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<String> listContent = [
    "My orders",
    "Shipping addresses",
    "Payment methods",
    "Promocodes",
    "My reviews",
    "Settings"
  ];
  List<String> listDescription = [
    "Already have 4 orders",
    "3 addresses",
    "Visa  **34",
    "You have special promocodes",
    "Reviews for 4 items",
    "Notifications, password"
  ];
  @override
  Widget build(BuildContext context) {
    List<Function()> listFunction = [
      () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const UserOrderScreen()));
      },
      () {},
      () {},
      () {},
      () {},
      () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SettingScreen()));
      }
    ];
    return SingleChildScrollView(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
              ),
              child: Text(
                "My profile",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: getProportionateScreenWidth(34)),
              ),
            ),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            const UserInformation(),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            ...List.generate(
                listContent.length,
                (index) => Column(
                      children: [
                        Divider(
                          color: Colors.grey,
                          height: getProportionateScreenWidth(1),
                        ),
                        MainButton(
                            content: listContent[index],
                            description: listDescription[index],
                            onPressed: listFunction[index]),
                      ],
                    )),
            Divider(
              color: Colors.grey,
              height: getProportionateScreenWidth(1),
            ),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
          ]),
    );
  }
}
