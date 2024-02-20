import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:store_app/helper/constants.dart';

class AllGategoriesService {
  final Dio dio;
  AllGategoriesService(this.dio);
  Future<List<dynamic>> getAllGategories({
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
        "$baseUrl/products/categories",
        options: Options(
          headers: headers,
        ),
      );
      List<dynamic> jsonData = response.data;
      return jsonData;
    } catch (e) {
      throw Exception("Failed to get all categories for $baseUrl  ");
    }
  }
}
