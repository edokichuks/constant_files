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
      700: Color(0XFF09231B),
    },
  );
  static const kGrayscaleColor = MaterialColor(
    0XFF393939,
    {
      100: Color(0XFFD7D7D7),
      200: Color(0XFF9C9C9C),
      300: Color(0XFF5A5A5A),
      400: Color(0XFF393939),
      500: Color(0XFF303030),
      600: Color(0XFF262626),
      700: Color(0XFF0B0B0B),
    },
  );
  static const kGrayErrorColor = MaterialColor(
    0XFFEC1B1B,
    {
      100: Color(0XFFFBD1D1),
      200: Color(0XFFF9B3B3),
      300: Color(0XFFF26767),
      400: Color(0XFFEC1B1B),
      500: Color(0XFFC51717),
      600: Color(0XFF9D1212),
      700: Color(0XFF760E0E),
    },
  );
  static const kGrayNeutralColor = MaterialColor(
    0XFFD4D4D4,
    {
      100: Color(0XFFFFFFFF),
      200: Color(0XFFF6F6F6),
      300: Color(0XFFEEEEEE),
      400: Color(0XFFD4D4D4),
      
    },
  );
}
