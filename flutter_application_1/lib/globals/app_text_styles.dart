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
}
