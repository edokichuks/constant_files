import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  AppTextStyle._();

  static TextStyle heading1 = GoogleFonts.dmSans(
    fontSize: 48,
    fontWeight: FontWeight.bold,
  );

  static TextStyle heading2 = GoogleFonts.dmSans(
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );
  static TextStyle heading3 = GoogleFonts.dmSans(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
  static TextStyle heading4 = GoogleFonts.dmSans(
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  static TextStyle heading5 = GoogleFonts.dmSans(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static TextStyle body1 = GoogleFonts.inter(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );
  static TextStyle body2 = GoogleFonts.inter(
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );
  static TextStyle body3 = GoogleFonts.inter(
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  static TextStyle body4 = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static TextStyle body5 = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  static TextStyle body6 = GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );
}
