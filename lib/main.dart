import 'package:ecommerce_app_sw25/screens/login_page.dart';
import 'package:ecommerce_app_sw25/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    theme: ThemeData(
      textTheme: GoogleFonts.poppinsTextTheme(),
    ),
  ));
}






