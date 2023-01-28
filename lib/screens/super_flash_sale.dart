import 'package:ecommerce_app_sw25/models/favourites_model.dart';
import 'package:ecommerce_app_sw25/screens/home_page.dart';
import 'package:flutter/material.dart';

class SuperFlashSale extends StatefulWidget {
  const SuperFlashSale({Key? key}) : super(key: key);

  @override
  State<SuperFlashSale> createState() => _SuperFlashSaleState();
}

List listOfFav  = <FavModel>[
  FavModel(title: "Nike Air Max 270 React ENG", image: 'assets/images/products/bag1.png', inStock: true  , price: '\$299.99', oldPrice:  '\$533.33', discount: "24% Off"),
  FavModel(title: "Nike Air Max 270 React ENG", image: 'assets/images/products/bag2.png', inStock: true  , price: '\$299.99', oldPrice:  '\$533.33', discount: "24% Off"),
  FavModel(title: "Nike Air Max 270 React ENG", image: 'assets/images/products/shoe1.png', inStock: true , price: '\$299.99', oldPrice:  '\$533.33', discount: "24% Off"),
  FavModel(title: "Nike Air Max 270 React ENG", image: 'assets/images/products/shoe2.png', inStock: true , price: '\$299.99', oldPrice:  '\$533.33', discount: "24% Off"),
];

class _SuperFlashSaleState extends State<SuperFlashSale> {
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
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 16,
                    ),
                    BackButton(
                      onPressed: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      color: Color(0xFF9098B1),
                    ),
                    SizedBox(
                      width: 21,
                    ),
                    Text(
                      "Super Flash Sale",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF223263),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Icon(Icons.search_outlined),
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
                SizedBox(
                  height: 16,
                ),
                Stack(children: <Widget>[
                  Column(children: <Widget>[
                    Container(
                      child: Image.asset(
                        'assets/images/0.png',
                        width: 343,
                        height: 202,
                      ),
                      margin: EdgeInsets.only(left: 16, right: 16),
                    ),
                  ]),
                  Column(children: <Widget>[
                    Container(
                      child: Text(
                        "Super Flash Sale",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFFFFFFF),
                            shadows: [
                              Shadow(
                                  // bottomLeft
                                  offset: Offset(-1.5, -1.5),
                                  color: Colors.black),
                              Shadow(
                                  // bottomRight
                                  offset: Offset(1.5, -1.5),
                                  color: Colors.black),
                              Shadow(
                                  // topRight
                                  offset: Offset(1.5, 1.5),
                                  color: Colors.black),
                              Shadow(
                                  // topLeft
                                  offset: Offset(-1.5, 1.5),
                                  color: Colors.black),
                            ]),
                      ),
                      margin: EdgeInsets.only(top: 32, right: 90),
                    ),
                    Container(
                      child: Text(
                        "50% Off",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFFFFFFF),
                            shadows: [
                              Shadow(
                                  // bottomLeft
                                  offset: Offset(-1.5, -1.5),
                                  color: Colors.black),
                              Shadow(
                                  // bottomRight
                                  offset: Offset(1.5, -1.5),
                                  color: Colors.black),
                              Shadow(
                                  // topRight
                                  offset: Offset(1.5, 1.5),
                                  color: Colors.black),
                              Shadow(
                                  // topLeft
                                  offset: Offset(-1.5, 1.5),
                                  color: Colors.black),
                            ]),
                      ),
                      margin: EdgeInsets.only(right: 200),
                    ),
                    SizedBox(
                      height: 29,
                    ),
                    Row(
                      children: [
                        Container(
                          child: Text(
                            "08",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF223263),
                            ),
                          ),
                          color: Colors.white,
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(
                            left: 40,
                          ),
                        ),
                        Text(
                          "  :  ",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              backgroundColor: Colors.transparent),
                        ),
                        Container(
                          child: Text(
                            "34",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF223263),
                            ),
                          ),
                          color: Colors.white,
                          padding: EdgeInsets.all(10),
                        ),
                        Text(
                          "  :  ",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              backgroundColor: Colors.transparent),
                        ),
                        Container(
                          child: Text(
                            "52",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF223263),
                            ),
                          ),
                          color: Colors.white,
                          padding: EdgeInsets.all(10),
                        ),
                      ],
                    ),
                  ]),
                ]),
                SizedBox(
                  height: 30,
                ),
 
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: GridView.builder(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 0.5,
                        crossAxisCount: 2,
                        crossAxisSpacing: 16,
                      ),
                      itemCount: listOfFav.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            children: [
                              Container(
                                child: GestureDetector(
                                  onTap: (){},
                                  child: Image.asset(listOfFav[index].image, height: 130, width: 130,),
                                ),
                              ),
                              SizedBox(height: 25,),
                              GestureDetector(
                                onTap: (){},
                                child: Text(listOfFav[index].title,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                    color: Color(0xFF223263),
                                  ),),
                              ),

                              Row(children: [
                                Icon(Icons.star,color: Color(0xFFFFC833),),
                                Icon(Icons.star,color: Color(0xFFFFC833),),
                                Icon(Icons.star,color: Color(0xFFFFC833),),
                                Icon(Icons.star,color: Color(0xFFFFC833),),
                                Icon(Icons.star_border_outlined,color: Color(0xFFFFC833),),


                              ],),


                              SizedBox(height: 8,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    listOfFav[index].price,
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFF40BFFF),
                                    ),),
                                ],
                              ),

                              Row(
                                children: [
                                  Text(
                                    listOfFav[index].oldPrice,
                                    style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      color: Color(0xFF9098B1),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,

                                    ),),

                                  SizedBox(width: 8,),

                                  Text(
                                    listOfFav[index].discount,
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


                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
