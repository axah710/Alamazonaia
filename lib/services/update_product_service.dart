// ignore_for_file: missing_required_param

import 'package:dio/dio.dart';
import 'package:store_app/helper/api.dart';
import 'package:store_app/helper/constants.dart';
import 'package:store_app/models/product_model.dart';

class UpdateProductService {
  Future<ProductModel> updateProduct({
    required String title,
    required String price,
    required String description,
    required String image,
    required String category,
    required int id,
  }) async {
    Map<String, dynamic> jsonData = await Api(Dio()).put(
      url:"$baseUrl/products/$id",
      data: {
        "title": title,
        "price": price,
        "description": description,
        "image": image,
        "category": category,
      },
    );
    return ProductModel.fromJson(jsonData);
  }
}
