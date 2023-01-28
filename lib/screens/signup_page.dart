import 'package:ecommerce_app_sw25/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:dio/dio.dart';

class SignUp extends StatelessWidget {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordAgainController = TextEditingController();


  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Form(
              key: formKey,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 111,
                      ),
                      Image.asset(
                        'assets/images/Vector.png',
                        width: 72,
                        height: 72,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Let's get started",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF223263),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Create a new account",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF9098B1)),
                      ),
                      SizedBox(
                        height: 28,
                      ),

                      TextFormField(
                        controller: nameController,
                        validator: (text){
                          if (text!.isEmpty){
                            return "You Must Enter Your Name";
                          }
                          return null ;
                        },
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF9098B1),
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          contentPadding:
                          EdgeInsets.symmetric(vertical: 13, horizontal: 16),
                          hintText: "Full Name",
                          hintStyle: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF9098B1),
                            fontWeight: FontWeight.w400,
                          ),
                          prefixIcon: Icon(
                            Icons.person_outline,
                            size: 25,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        controller: emailController,
                        validator: (text){
                          if (! RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(text!)){
                            return "Email invalid";
                          }

                          return null;
                        },
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF9098B1),
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          contentPadding:
                          EdgeInsets.symmetric(vertical: 13, horizontal: 16),
                          hintText: "Email",
                          hintStyle: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF9098B1),
                            fontWeight: FontWeight.w400,
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
                        validator: (text) {
                          if (text!.isEmpty) {
                            return 'Please enter password';
                          }
                              return null;


                        },
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
                        height: 8,
                      ),
                      TextFormField(
                        controller: passwordAgainController,
                        validator: (text){
                          if ( passwordController.text != passwordAgainController.text ){
                            return "Password not matching";
                          }
                          return null;
                        },
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
                          hintText: "Enter Your Password Again",
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
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              register(context);
                            }
                          },
                          child: Text("Sign Up"),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF40BFFF),
                              textStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFFFFFFF),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Text.rich(TextSpan(
                          text: "Already have an account?  ",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF9098B1)),
                          children: [
                            TextSpan(
                                text: "Sign In",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF40BFFF)),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pop(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginPage()),
                                    );
                                  }),
                          ])),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }

  void register(BuildContext context) async {
    try {
      var response = await Dio().post('https://api.escuelajs.co/api/v1/users/', data: {
        "name": nameController.text,
        "email": emailController.text,
        "password": passwordController.text,
        "avatar": "https://api.lorem.space/image/face?w=640&h=480",
      });
        Navigator.pop(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
      print(response);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error in Email or Password"),
        backgroundColor: Colors.red,)
      );
      print(e);
    }
  }
}

