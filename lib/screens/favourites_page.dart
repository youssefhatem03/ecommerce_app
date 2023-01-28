import 'package:ecommerce_app_sw25/models/favourites_model.dart';
import 'package:ecommerce_app_sw25/screens/home_page.dart';
import 'package:flutter/material.dart';

class FavPage extends StatefulWidget {
  const FavPage({Key? key}) : super(key: key);

  @override
  State<FavPage> createState() => _FavPageState();
}

List listOfFavs  = <FavModel>[
  FavModel(title: "Nike Air Max 270 React ENG", image: 'assets/images/products/bag1.png', inStock: true  , price: '\$299.99', oldPrice:  '\$533.33', discount: "24% Off"),
  FavModel(title: "Nike Air Max 270 React ENG", image: 'assets/images/products/bag2.png', inStock: true  , price: '\$299.99', oldPrice:  '\$533.33', discount: "24% Off"),
  FavModel(title: "Nike Air Max 270 React ENG", image: 'assets/images/products/shoe1.png', inStock: true , price: '\$299.99', oldPrice:  '\$533.33', discount: "24% Off"),
  FavModel(title: "Nike Air Max 270 React ENG", image: 'assets/images/products/shoe2.png', inStock: true , price: '\$299.99', oldPrice:  '\$533.33', discount: "24% Off"),
];

class _FavPageState extends State<FavPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
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

                    Text("Favourite Products",style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF223263),
                    ),),

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
                        itemCount: listOfFavs.length,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Column(
                              children: [
                                Container(
                                  child: GestureDetector(
                                    onTap: (){},
                                    child: Image.asset(listOfFavs[index].image, height: 130, width: 130,),
                                  ),
                                ),
                                SizedBox(height: 25,),
                                GestureDetector(
                                    onTap: (){},
                                    child: Text(listOfFavs[index].title,
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
                                      listOfFavs[index].price,
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
                                      listOfFavs[index].oldPrice,
                                      style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        color: Color(0xFF9098B1),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,

                                      ),),

                                    SizedBox(width: 8,),

                                    Text(
                                      listOfFavs[index].discount,
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








                  SizedBox(height: 30,)
                ],
              ),

          ),
        ),
      ),

    );
  }
}
