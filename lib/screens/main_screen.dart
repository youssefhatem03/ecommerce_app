import 'package:ecommerce_app_sw25/screens/categories_page.dart';
import 'package:ecommerce_app_sw25/screens/favourites_page.dart';
import 'package:ecommerce_app_sw25/screens/product_screen.dart';
import 'package:ecommerce_app_sw25/screens/super_flash_sale.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ecommerce_app_sw25/repository/category_repo.dart';
import 'package:ecommerce_app_sw25/models/category_repo_model.dart';
import 'package:ecommerce_app_sw25/repository/products_repo.dart';
import 'package:ecommerce_app_sw25/models/products_repo_model.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';


int activeIndex = 0;

List listOfFlashSale = [
  {
    "icon": "assets/images/products/shoe1.png",
    "name": "FS - Nike Air Max 270 React...",
    "price": "\$299.99",
    "oldPrice": "\$533.33",
    "discount": "24% Off"
  },
  {
    "icon": "assets/images/products/bag1.png",
    "name": "FS - QUILTED MAXI CROS...",
    "price": "\$299.99",
    "oldPrice": "\$533.33",
    "discount": "24% Off"
  },
  {
    "icon": "assets/images/products/shoe2.png",
    "name": "FS - Nike Air Max 270 React...",
    "price": "\$299.99",
    "oldPrice": "\$533.33",
    "discount": "24% Off"
  },
];

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
                    Container(
                      width: MediaQuery.of(context).size.width * 0.67,
                      margin: EdgeInsets.only(left: 16, right: 18.96),
                      child: TextFormField(
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: Color(0xFF9098B1),
                        ),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12),
                            hintText: "Search Product",
                            prefixIcon: Icon(
                              Icons.search_outlined,
                              color: Color(0xFF40BFFF),
                            ),
                            hintStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF9098B1),
                            )),
                      ),
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => FavPage()),
                          );
                        },
                        child: Icon(CupertinoIcons.heart)),
                    SizedBox(
                      width: 22.08,
                    ),
                    Icon(CupertinoIcons.bell),
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


                // slider
                CarouselSlider.builder(
                    itemCount: 5,
                    carouselController: CarouselController(),
                    options: CarouselOptions(
                        viewportFraction: 1,
                        autoPlay: false,
                        autoPlayInterval: Duration(seconds: 5),
                        autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                        aspectRatio: 16 / 9,
                        onPageChanged: (index, reason) =>
                            setState(() => activeIndex = index)),
                    itemBuilder: (BuildContext context, int itemIndex,
                        int pageViewIndex) {
                      if (itemIndex == 0) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SuperFlashSale()),
                            );
                          },
                          child: Stack(children: <Widget>[
                            Column(children: <Widget>[
                              Container(
                                child: Image.asset(
                                  'assets/images/$itemIndex.png',
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
                        );
                      }
                      ;

                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SuperFlashSale()),
                          );
                        },
                        child: Stack(
                          children: <Widget>[
                            Column(children: <Widget>[
                              Container(
                                child: Image.asset(
                                  'assets/images/$itemIndex.jpg',
                                  width: 343,
                                  height: 202,
                                ),
                                margin: EdgeInsets.only(left: 16, right: 16),
                              ),
                            ]),
                            Column(
                              children: <Widget>[
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
                              ],
                            ),
                          ],
                        ),
                      );
                    }),
                SizedBox(
                  height: 16,
                ),
                buildIndicator(),

                SizedBox(
                  height: 24,
                ),

                // categories text
                Row(
                  children: [
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      "Category",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF223263)),
                    ),
                    SizedBox(
                      width: 157,
                    ),
                    Text.rich(
                      TextSpan(
                        text: "More Categories",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CategoriesPage()),
                            );
                          },
                        style: TextStyle(
                          color: Color(0xFF40BFFF),
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                      ),
                    )
                  ],
                ),

                SizedBox(
                  height: 38,
                ),

                // category list
                FutureBuilder<List<CategoryRepoModel>>(
                    future: CategoryRepo().getAllCategories(),
                    builder: (BuildContext context,
                        AsyncSnapshot<List<CategoryRepoModel>> snapshot) {
                      final listOfNewCategories = snapshot.data;
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Container(
                          child: CircularProgressIndicator(
                            color: Color(0xFF40BFFF),
                          ),
                        );
                      }

                      if (snapshot.connectionState == ConnectionState.done) {
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 14.0),
                          height: 100,
                          child: ListView.builder(
                              physics: BouncingScrollPhysics(),
                              itemCount: listOfNewCategories!.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Container(
                                  height: 100,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 14.0),
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {},
                                        child: CircleAvatar(
                                          radius: 27,
                                          backgroundColor: Color(0xFFEBF0FF),
                                          child: CircleAvatar(
                                              backgroundColor: Colors.white,
                                              radius: 26,
                                              child: Image.network(
                                                listOfNewCategories[index]
                                                    .image,
                                                height: 24,
                                                width: 24,
                                              )),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Container(
                                        child: GestureDetector(
                                          onTap: () {},
                                          child: Center(
                                            child: Text(
                                              listOfNewCategories[index].name,
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xFF9098B1)),
                                            ),
                                          ),
                                        ),
                                        height: 30,
                                        width: 50,
                                      )
                                    ],
                                  ),
                                );
                              }),
                        );
                      }
                      if (snapshot.connectionState == ConnectionState.none) {
                        return Text("SUIIIIIIIIIIIIIIIIIIIIII");
                      }

                      return Text("Try again later!");
                    }),

                SizedBox(
                  height: 24,
                ),

                // flash sale text
                Row(
                  children: [
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      "Flash Sale",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF223263)),
                    ),
                    SizedBox(
                      width: 197,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "See More",
                        style: TextStyle(
                          color: Color(0xFF40BFFF),
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 28,
                ),

                // flash sale list
                Container(
                  height: 220,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: listOfFlashSale.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Color(0xFFEBF0FF), width: 1),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          margin: const EdgeInsets.symmetric(horizontal: 14.0),
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ProductScreen()),
                                  );
                                },
                                child: Image.asset(
                                  listOfFlashSale[index]['icon'],
                                  height: 109,
                                  width: 109,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ProductScreen()),
                                        );
                                      },
                                      child: Text(
                                        listOfFlashSale[index]['name'],
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12,
                                          color: Color(0xFF223263),
                                        ),
                                      ),
                                    ),
                                    height: 36,
                                    width: 100,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    listOfFlashSale[index]['price'],
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFF40BFFF),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    listOfFlashSale[index]['oldPrice'],
                                    style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      color: Color(0xFF9098B1),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
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

                SizedBox(
                  height: 24,
                ),

                // mega sale text
                Row(
                  children: [
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      "Mega Sale",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF223263)),
                    ),
                    SizedBox(
                      width: 197,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "See More",
                        style: TextStyle(
                          color: Color(0xFF40BFFF),
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 28,
                ),

                // mega sale list
                Container(
                  height: 220,
                  child: ListView.builder(
                      itemCount: listOfFlashSale.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Color(0xFFEBF0FF), width: 1),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.all(8),
                          margin: const EdgeInsets.symmetric(horizontal: 14.0),
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Image.asset(
                                  listOfFlashSale[index]['icon'],
                                  height: 109,
                                  width: 109,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    listOfFlashSale[index]['name'],
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12,
                                      color: Color(0xFF223263),
                                    ),
                                  ),
                                ),
                                height: 36,
                                width: 100,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                listOfFlashSale[index]['price'],
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF40BFFF),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    listOfFlashSale[index]['oldPrice'],
                                    style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      color: Color(0xFF9098B1),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
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

                // recommended products image
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      margin: EdgeInsets.all(16),
                      child: GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                            'assets/images/recommended_products.png'),
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 48,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 40),
                          child: Text(
                            "Recommended Product",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          width: 190,
                          height: 72,
                        ),
                        SizedBox(
                          height: 36,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 40),
                          child: Text(
                            "We recommend the best for you",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                      ],
                    )
                  ],
                ),

                // recommended product list
                FutureBuilder<List<Product>>(
                  future: ProductRepository().getAllProducts(),
                  builder: (context, snapshot) {
                    final listOfNewProducts = snapshot.data;
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Container(
                        child: Center(
                          child: CircularProgressIndicator(
                            color: Color(0xFF40BFFF),
                          ),
                        ),
                      );
                    }
                    if (snapshot.connectionState == ConnectionState.done) {
                      return GridView.builder(
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 0.7,
                          crossAxisCount: 2,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 10,
                        ),
                        itemCount: listOfNewProducts!.length,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          final priceAfterDiscount = listOfNewProducts[index]
                                  .price -
                              (listOfNewProducts[index].price *
                                  (listOfNewProducts[index].discountPercentage /
                                      100));
                          return Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xFFEBF0FF), width: 1),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            margin: const EdgeInsets.symmetric(horizontal: 8.0),
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Column(
                              children: [
                                Container(
                                  child: Image.network(
                                    listOfNewProducts[index].thumbnail,
                                    height: 130,
                                    width: 130,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  listOfNewProducts[index].title,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                    color: Color(0xFF223263),
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    RatingStars(
                                      value: listOfNewProducts[index].rating,
                                      maxValueVisibility: false,
                                      valueLabelVisibility: false,
                                      starSize: 16,
                                      starColor: Color(0xFFFFC833),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "\$${priceAfterDiscount.ceilToDouble().toString()}",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFF40BFFF),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "\$${listOfNewProducts[index].price.toString()}",
                                      style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        color: Color(0xFF9098B1),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "${listOfNewProducts[index].discountPercentage.toString()}% off",
                                      style: TextStyle(
                                        color: Color(0xFFFB7181),
                                        fontWeight: FontWeight.w700,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    }

                    return Text("Try again later!");

                  },
                ),


              ],
            ),
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