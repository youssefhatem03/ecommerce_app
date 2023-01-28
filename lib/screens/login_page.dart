import 'package:ecommerce_app_sw25/screens/home_page.dart';
import 'package:ecommerce_app_sw25/screens/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';


class LoginPage extends StatelessWidget {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Form(
          key: formKey,
          child: Container(
            margin: new EdgeInsets.symmetric(
              horizontal: 16,
            ),
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(children: <Widget>[

                SizedBox(
                  height: 68,
                ),
                Image.asset(
                  'assets/images/Vector.png',
                  height: 72,
                  width: 72,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Welcome to Lafyuu",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF223263),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Sign in to continue",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 28,
                ),
                TextFormField(
                  controller: emailController,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF9098B1),
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 13, horizontal: 16),
                    hintText: "Your Email",
                    hintStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF9098B1),
                    ),
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      size: 25,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF9098B1),
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 13, horizontal: 16),
                    hintText: "Password",
                    hintStyle: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF9098B1),
                      fontWeight: FontWeight.w400,
                    ),
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      size: 25,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),


                SizedBox(
                  height: 57,
                  child: ElevatedButton(
                    onPressed: () {
                      login(context);


                    },
                    child: Center(child: Text("Sign in")),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF40BFFF),
                        textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        )),
                  ),
                ),


                SizedBox(
                  height: 21,
                ),
                Row(
                  children: [
                    Container(
                      height: 1,
                      color: Color(0xFFEBF0FF),
                      width: MediaQuery.of(context).size.width * 0.387,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.04,
                    ),
                    Text(
                      "OR",
                      style: TextStyle(
                        color: Color(0xFF9098B1),
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.04,
                    ),
                    Container(
                      height: 1,
                      color: Color(0xFFEBF0FF),
                      width: MediaQuery.of(context).size.width * 0.387,
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                OutlinedButton.icon(
                    icon: Image.asset(
                      'assets/images/google.png',
                      width: 25,
                      height: 25,
                    ),
                    onPressed: () {},
                    label: SizedBox(
                      width: 300,
                      height: 60,
                      child: Center(
                        child: Text(
                          "Login with Google",
                          style: TextStyle(
                            color: Color(0xFF9098B1),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    )),
                SizedBox(
                  height: 8,
                ),
                OutlinedButton.icon(
                    icon: Image.asset(
                      'assets/images/facebook.png',
                      width: 25,
                      height: 25,
                    ),
                    onPressed: () {},
                    label: SizedBox(
                      width: 300,
                      height: 60,
                      child: Center(
                        child: Text(
                          "Login with Facebook",
                          style: TextStyle(
                            color: Color(0xFF9098B1),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    )),
                SizedBox(
                  height: 16,
                ),
                Text.rich(
                  TextSpan(
                    style: TextStyle(
                      color: Color(0xFF40BFFF),
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                    text: "Forgot Password?",
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text.rich(TextSpan(
                    text: "Don't have an account?  ",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF9098B1)),
                    children: [
                      TextSpan(
                          style: TextStyle(
                            color: Color(0xFF40BFFF),
                            fontWeight: FontWeight.w700,
                          ),
                          text: "Register",
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>  SignUp()),
                              );
                            }),
                    ])),
              ]),
            ),
          ),
        ),
      ),
    );
  }



  void login(BuildContext context) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final response = await Dio().post('https://api.escuelajs.co/api/v1/auth/login', data: {
        "email": emailController.text,
        "password": passwordController.text,
      });

      print(response);

      await prefs.setString("user_access_token", response.data["access_token"]);
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage()));
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Error in Email or Password"),
            backgroundColor: Colors.red,));
    }
  }
}