import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle headerTextStyl() {
    return GoogleFonts.montserrat(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );
  }

  static TextStyle normalTextStyle() {
    return GoogleFonts.signikaNegative(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );
  }

  static TextStyle nameTextStyle() {
    return GoogleFonts.signikaNegative(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        letterSpacing: 2);
  }

  static TextStyle attributeStyle() {
    return GoogleFonts.signikaNegative(
      fontSize: 25,
      fontWeight: FontWeight.bold,
      color: Colors.blue,
    );
  }

  static TextStyle descriptionStyle() {
    return GoogleFonts.signikaNegative(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );
  }

  static TextStyle downloadButton() {
    return GoogleFonts.signikaNegative(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );
  }

  static TextStyle AboutMeHeading() {
    return GoogleFonts.signikaNegative(
      fontSize: 35,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );
  }

  static TextStyle AboutMeMe() {
    return GoogleFonts.signikaNegative(
      fontSize: 35,
      fontWeight: FontWeight.bold,
      color: Color(0xFF00CCCC),
    );
  }

  static TextStyle PortfolioTextHeading() {
    return GoogleFonts.signikaNegative(
        fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black);
  }

  static TextStyle PortfolioTextNormal() {
    return GoogleFonts.signikaNegative(
      fontSize: 15,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    );
  }
}
