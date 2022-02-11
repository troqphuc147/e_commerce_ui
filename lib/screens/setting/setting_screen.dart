
import 'package:e_commerce_ui/screens/setting/components/appbar.dart';
import 'package:e_commerce_ui/screens/setting/components/body.dart';
import 'package:flutter/material.dart';
class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context),
      body: const Body(),
    );
  }
}
