import 'package:ecommerce_app_sw25/screens/home_page.dart';
import 'package:ecommerce_app_sw25/screens/login_page.dart';
import 'package:ecommerce_app_sw25/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    initApp();
  }

  void initApp() {
    Future.delayed(Duration(milliseconds: 200), () async {
      final prefs = await SharedPreferences.getInstance();
      final accessToken = await prefs.get('user_access_token');
      if (accessToken == null) {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) {
          return LoginPage();
        }), (route) => false);
      } else {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) {
          return HomePage();
        }), (route) => false);
      }
    });
  }

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF40BFFF),
      body: Center(
        child: Container(
          child: Image.asset(
            "assets/images/splash_image.png",
            height: 72,
            width: 72,
          ),
        ),
      ),
    );
  }
}
