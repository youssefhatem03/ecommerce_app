import 'package:dio/dio.dart';
import 'package:ecommerce_app_sw25/models/products_repo_model.dart';

class ProductRepository {
  Future<List<Product>> getAllProducts() async {
    // fetch / get data
    final response = await Dio().get('https://dummyjson.com/products');

    // modelling
    final listOfProductModel = List<Product>.from(
      response.data['products'].map(
            (value) {
          return Product.fromJson(value);
        },
      ),
    );

    return listOfProductModel;
  }
}