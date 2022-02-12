import 'package:flutter/cupertino.dart';

import '../../../size_config.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  bool saleChange = true;
  bool newArrival = false;
  bool deliveryStatusChange = false;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        "Personal Information",
        style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: getProportionateScreenWidth(16)),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Password",
            style: TextStyle(fontSize: getProportionateScreenWidth(14)),
          ),
          CupertinoSwitch(
              value: saleChange,
              onChanged: (value) {
                setState(() {
                  saleChange = !saleChange;
                });
              })
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "New arrivals",
            style: TextStyle(fontSize: getProportionateScreenWidth(14)),
          ),
          CupertinoSwitch(
              value: newArrival,
              onChanged: (value) {
                setState(() {
                  newArrival = !newArrival;
                });
              })
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Delivery status changes",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(14),
            ),
          ),
          CupertinoSwitch(
              value: deliveryStatusChange,
              onChanged: (value) {
                setState(() {
                  deliveryStatusChange = !deliveryStatusChange;
                });
              })
        ],
      ),
    ]);
  }
}
