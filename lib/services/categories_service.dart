import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:store_app/helper/constants.dart';
import 'package:store_app/models/product_model.dart';

class AllProductService {
  final Dio dio;
  AllProductService(this.dio);
  Future<List<ProductModel>> getAllProductService({
    required String categoryName,
    @required String? token,
  }) async {
    Map<String, dynamic> headers = {};
    if (token != null) {
      headers.addAll(
        {"Authorization": "Bearer $token"},
      );
    }
    try {
      Response response = await dio.get(
        "$baseUrl/products/category/$categoryName",
        options: Options(
          headers: headers,
        ),
      );
      Map<String, dynamic> jsonData = response.data;
      List<ProductModel> productList = [];
      for (int i = 0; i < jsonData.length; i++) {
        productList.add(
          ProductModel.fromJson(
            jsonData[i],
          ),
        );
      }
      return productList;
    } catch (e) {
      throw Exception(
        'Oops there was a problem loading the category $categoryName from the database',
      );
    }
  }
}
