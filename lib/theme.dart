import 'package:flutter/material.dart';

ThemeData lightTheme() {
  return ThemeData(
    scaffoldBackgroundColor: const Color(0xfff9f9f9),
    textTheme: lightTextTheme(),
    appBarTheme: lightAppbarTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: const BorderSide(color: Color(0xFF757575)),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}
ThemeData darkTheme() {
  return ThemeData(

  );
}
TextTheme lightTextTheme(){
  return const TextTheme(
    bodyText1:  TextStyle(
      fontFamily: "Metropolis",
      color: Color(0xff222222),
    ),
    bodyText2:  TextStyle(
      fontFamily: "Metropolis",
      color: Color(0xff222222),
    ),
  );
}
TextTheme darkTextTheme(){
  return const TextTheme(
    bodyText1:  TextStyle(
      fontFamily: "Metropolis",
      color: Color(0xffffffff),
    ),
  );
}
AppBarTheme lightAppbarTheme(){
  return const AppBarTheme(
    centerTitle: true,
    color: Colors.transparent,
    elevation: 0,
    titleTextStyle: TextStyle(
      color: Color(0xff222222),
      fontSize: 18,
    )
  );
}
AppBarTheme darkAppbarTheme(){
  return const AppBarTheme(
      centerTitle: true,
      color: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: Color(0xff222222),
        fontSize: 18,
      )
  );
}
