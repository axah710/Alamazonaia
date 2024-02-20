import 'package:dio/dio.dart';
import 'package:store_app/helper/constants.dart';
import 'package:store_app/models/product_model.dart';

class AllProductService {
  final Dio dio;
  AllProductService(this.dio);
  Future<List<ProductModel>> getAllProductService() async {
    Map<String, dynamic> headers = {};

    try {
      Response response = await dio.get(
        "$baseUrl/products",
        options: Options(
          headers: headers,
        ),
      );
      List<dynamic> jsonData = response.data;
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
        "Failed to get product from $baseUrl ",
      );
    }
  }
}
