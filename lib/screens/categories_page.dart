import 'package:ecommerce_app_sw25/screens/sussy_page.dart';
import 'package:ecommerce_app_sw25/screens/home_page.dart';
import 'package:flutter/material.dart';

List listOfCategories = [

  {"Icon": "assets/images/categories/man_shirt.png" , "Text" : "Shirt"},
  {"Icon": "assets/images/categories/dress.png" , "Text" : "Dress"},
  {"Icon": "assets/images/categories/man_tshirt.png" , "Text" : "Man T-Shirt"},
  {"Icon": "assets/images/categories/man_pants.png" , "Text" : "Man Pants"},
  {"Icon": "assets/images/categories/woman_tshirt.png" , "Text" : "Woman T-Shirt"},
  {"Icon": "assets/images/categories/woman_pants.png" , "Text" : "Woman Pants"},
  {"Icon": "assets/images/categories/skirt.png" , "Text" : "Skirt"},
  {"Icon": "assets/images/categories/man_shoes.png" , "Text" : "Man Shoes"},
  {"Icon": "assets/images/categories/woman_shoes.png" , "Text" : "Woman Shoes"},
  {"Icon": "assets/images/categories/man_bag.png" , "Text" : "Man Bag"},
  {"Icon": "assets/images/categories/woman_bag.png" , "Text" : "Woman Bag"},
  {"Icon": "assets/images/categories/man_underwear.png" , "Text" : "Man Underwear"},
  {"Icon": "assets/images/categories/bikini.png" , "Text" : "Bikini" , "page" : "BikiniPage"},

];

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: <Widget>[
                SizedBox(height: 16,),

                Row(children: [
                  SizedBox(width: 16,),
                  BackButton(
                    onPressed: (){Navigator.pop(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomePage()),
                    );},
                    color: Color(0xFF9098B1),),

                  SizedBox(width: 21,),

                  Text("Categories",style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF223263),
                  ),)
                ],
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xFFEBF0FF),
                ),


                Container(
                  height: MediaQuery.of(context).size.height * 0.85,
                  child: ListView.builder(
                      itemCount: listOfCategories.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Container(
                          child: TextButton.icon(
                              icon: Image.asset(
                                  listOfCategories[index]['Icon'],
                                  width: 25,
                                  height: 25,
                                ),

                              onPressed: () {
                                if (listOfCategories[index]['Text'] == 'Bikini'){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const BikiniPage()),
                                  );
                                }
                              },
                              label: SizedBox(
                                width: 300,
                                height: 60,
                                child: Container(
                                  padding: EdgeInsets.all(20),
                                  child: Text(
                                      listOfCategories[index]['Text'],
                                      style: TextStyle(
                                        color: Color(0xFF9098B1),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                ),
                                ),
                              ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
