import 'package:ecommerce_app_sw25/screens/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}
int activeIndex = 2;

List listOfSizes = ['6.5','7','7.5','8','8.5','9','9.5','10'];
List listOfColors = <Color>[
  Color(0xFFFFC833),
  Color(0xFF40BFFF),
  Color(0xFFFB7181),
  Color(0xFF53D1B6),
  Color(0xFF5C61F4),
  Color(0xFF223263),
  Color(0xFF9098B1),
];

List listOfFlashSale = [
  {"icon" : "assets/images/products/shoe1.png" , "name" : "FS - Nike Air Max 270 React..." , "price" : "\$299.99" , "oldPrice" : "\$533.33" , "discount" : "24% Off"},
  {"icon" : "assets/images/products/bag1.png" , "name" : "FS - QUILTED MAXI CROS..." , "price" : "\$299.99" , "oldPrice" : "\$533.33" , "discount" : "24% Off"},
  {"icon" : "assets/images/products/shoe2.png" , "name" : "FS - Nike Air Max 270 React..." , "price" : "\$299.99" , "oldPrice" : "\$533.33" , "discount" : "24% Off"},
];


class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 16),
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(children: <Widget>[
              SizedBox(height: 16,),

              Row(children: [
                BackButton(
                  onPressed: (){Navigator.pop(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomePage()),
                  );},
                  color: Color(0xFF9098B1),),

                SizedBox(width: 21,),

                Text("Nike Air Zoom Pe....",style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF223263),
                ),),
                SizedBox(width: 60,),

                GestureDetector(
                  onTap: (){},
                  child: Icon(Icons.search_outlined),
                ),
                SizedBox(width: 10,),

                GestureDetector(
                  onTap: (){},
                  child: Icon(Icons.more_vert_outlined),
                )

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
                  child: Image.asset('assets/images/products/shoe2full.png')),
              SizedBox(height: 16,),
              buildIndicator(),
              SizedBox(height: 16,),
              Container(
                child: Row(
                  children: [
                    Text("Nike Air Zoom Pegasus 36 \nMiami",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Color(0xFF223263)
                    ),),
                    SizedBox(width: 28,),
                    Icon(CupertinoIcons.heart)
                  ],
                ),
              ),
              SizedBox(height: 8,),
              Row(children: [
                Icon(Icons.star,color: Color(0xFFFFC833),),
                Icon(Icons.star,color: Color(0xFFFFC833),),
                Icon(Icons.star,color: Color(0xFFFFC833),),
                Icon(Icons.star,color: Color(0xFFFFC833),),
                Icon(Icons.star_border_outlined,color: Color(0xFFFFC833),),


              ],),
              SizedBox(height: 16,),
              Row(
                children: [
                  Text("\$299.43",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF40BFFF),
                    ),),
                ],
              ),
              SizedBox(height: 24,),
              Row(
                children: [
                  Text("Select Size",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF223263),
                    ),),
                ],
              ),
              Container(
                height: 100,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                    itemCount: listOfSizes.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: CircleAvatar(
                          backgroundColor: Color(0xFFEBF0FF),
                          radius: 31,
                          child: CircleAvatar(
                              child: Text(listOfSizes[index], style: TextStyle(color: Color(0xFF223263),fontSize: 14,fontWeight: FontWeight.w700),),
                          backgroundColor: Colors.white,
                          radius: 30,),
                        ),




                      );
                    }),
              ),
              SizedBox(height: 24,),
              Row(
                children: [
                  Text("Select Color",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF223263),
                    ),),
                ],
              ),
              Container(
                height: 100,
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: listOfColors.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: CircleAvatar(radius: 26,backgroundColor: listOfColors[index],)
                      );
                    }),
              ),
              Row(
                children: [
                  Text("Specifications",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF223263),
                    ),),
                ],
              ),
              SizedBox(height: 12,),
              Row(
                children: [
                  Text("Shown:",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF223263),
                    ),),
                ],
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  margin: EdgeInsets.only(right: 16),
                  child: Row(
                    children: [
                      Text("Laser \nBlue/Anthracite/Watermelon\n/White",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF9098B1),
                          ),),

                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Text("Style:",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF223263),
                    ),),
                ],
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  margin: EdgeInsets.only(right: 16),
                  child: Row(
                    children: [
                      Text("CD0113-400",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF9098B1),
                        ),),

                    ],
                  ),
                ),
              ),
              SizedBox(height: 16,),
              Text("The Nike Air Max 270 React ENG combines a full-length React foam midsole with a 270 Max Air unit for unrivaled comfort and a striking visual experience.",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF9098B1),
                ),),
              SizedBox(height: 16,),
              Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text("Review Product",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF223263),
                          ),),
                  ),
                ],
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  margin: EdgeInsets.only(right: 16),
                  child: Row(
                    children: [
                      Text("See More",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF40BFFF),
                        ),),

                    ],
                  ),
                ),
              ),
              Row(children: [
                Icon(Icons.star,color: Color(0xFFFFC833),),
                Icon(Icons.star,color: Color(0xFFFFC833),),
                Icon(Icons.star,color: Color(0xFFFFC833),),
                Icon(Icons.star,color: Color(0xFFFFC833),),
                Icon(Icons.star_half,color: Color(0xFFFFC833),),
                SizedBox(width: 8,),
                Text("4.5",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF9098B1),
                  ),),
                SizedBox(width: 3,),
                Text("(5 Ratings)",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF9098B1),
                  ),),




              ],),
              SizedBox(height: 16,),
              Row(children: [
                Image.asset("assets/images/Bill.png",height: 48,width: 48,),
                SizedBox(width: 16,),
                Column(children: [
                  Text("Bill Lawson",style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF223263)
                  ),),
                  SizedBox(width: 4,),

                  Row(children: [
                    Icon(Icons.star,color: Color(0xFFFFC833),size: 20,),
                    Icon(Icons.star,color: Color(0xFFFFC833),size: 20,),
                    Icon(Icons.star,color: Color(0xFFFFC833),size: 20,),
                    Icon(Icons.star,color: Color(0xFFFFC833),size: 20,),
                    Icon(Icons.star_border_outlined,color: Color(0xFFFFC833),),


                  ],),

                ],)
                
              ],
              ),
              SizedBox(height: 20,),
              Text("air max are always very comfortable fit, clean and just perfect in every way."
                  " just the box was too small and scrunched the sneakers up a little bit,"
                  " not sure if the box was always this small but the 90s are and will always be one of my favorites.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color(0xFF9098B1),
                ),
              ),
              SizedBox(height: 16,),
              Row(children: [
                Image.asset("assets/images/products/shoe1.png"    ,height: 75,width: 75,),
                SizedBox(width: 12,),
                Image.asset("assets/images/products/shoe1back.png",height: 75,width: 75,),
                SizedBox(width: 12,),
                Image.asset("assets/images/products/shoe1und.png" ,height: 75,width: 75,),
              ],),
              SizedBox(height: 16,),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("December 10, 2016",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: Color(0xFF9098B1),
                  ),
                ),
              ),
              SizedBox(height: 24,),
              Row(
                children: [
                  Text("You Might Also Like",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF223263),
                    ),),
                ],
              ),
              SizedBox(height: 24,),
              Container(
                height: 200,
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: listOfFlashSale.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 14.0),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProductScreen()),
                                );
                              },
                              child: Image.asset(listOfFlashSale[index]['icon'],height: 109, width: 109,),
                            ),
                            SizedBox(height: 8,),
                            Container(
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ProductScreen()),
                                  );
                                },
                                child: Text(listOfFlashSale[index]['name'],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                    color: Color(0xFF223263),
                                  ),),
                              ),
                              height: 36, width: 100,
                            ),

                            SizedBox(height: 8,),

                            Text(
                              listOfFlashSale[index]['price'],
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF40BFFF),
                              ),),

                            Row(
                              children: [
                                Text(
                                  listOfFlashSale[index]['oldPrice'],
                                  style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    color: Color(0xFF9098B1),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,

                                  ),),

                                SizedBox(width: 8,),
                                Text(
                                  listOfFlashSale[index]['discount'],
                                  style: TextStyle(
                                    color: Color(0xFFFB7181),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 10,
                                  ),
                                )
                              ],
                            )

                          ],
                        ),
                      );
                    }),
              ),
              SizedBox(height: 20,),
              SizedBox(
                height: 57,
                child: Container(
                  margin: EdgeInsets.only(right: 16),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Center(child: Text("Add To Cart")),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF40BFFF),
                        textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        )),
                  ),
                ),
              ),
              SizedBox(height: 30,),

            ],),
          ),
        ),
      ),
    );
  }
}


Widget buildIndicator() => AnimatedSmoothIndicator(
  activeIndex: activeIndex,
  count: 5,
  effect: ScrollingDotsEffect(
    dotColor: Color(0xFFEBF0FF),
    activeDotColor: Color(0xFF40BFFF),
    dotHeight: 8,
    dotWidth: 8,
  ),
);
