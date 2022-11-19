import 'package:flutter/material.dart';

class AppColor {
  ///This class is where all the app colors will be added
  ///This is a private class and as so all its fields must be made static
  AppColor._();

  static const kPrimaryColor = MaterialColor(
    0XFF8C54BF,
    {
      100: Color(0XFFE8DDF2),
      200: Color(0XFFC5A9DF),
      300: Color(0XFF9F71CA),
      400: Color(0XFF8C54BF),
      500: Color(0XFF5D387F),
      600: Color(0XFF2F1C40),
      700: Color(0XFF1C1126),
    },
  );
  static const kSecondaryColor = MaterialColor(
    0XFF2FB087,
    {
      100: Color(0XFFD5EFE7),
      200: Color(0XFF97D7C3),
      300: Color(0XFF74CAAF),
      400: Color(0XFF2FB087),
      500: Color(0XFF279371),
      600: Color(0XFF185844),
      700: Color(0XFF185844),
      800: Color(0XFF09231B),
    },
  );
}
