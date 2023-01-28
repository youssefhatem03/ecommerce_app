class FavModel {
  String image;
  String title;
  bool inStock;
  String price;
  String oldPrice;
  String discount;


  FavModel({
    required this.title,
    required this.image,
    required this.inStock,
    required this.price,
    required this.oldPrice,
    required this.discount,
  });
}