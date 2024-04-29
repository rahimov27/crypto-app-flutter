import 'package:crypto_project/ui/screen1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      textTheme: GoogleFonts.latoTextTheme(), // Use Google Fonts text theme
    ),
    home: Screen1(),
  ));
}
