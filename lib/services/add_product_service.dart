// ignore_for_file: missing_required_param

import 'package:dio/dio.dart';
import 'package:store_app/helper/api.dart';
import 'package:store_app/helper/constants.dart';
import 'package:store_app/models/product_model.dart';

class AddProductService {
  Future<ProductModel> addProduct({
    required String title,
    required double price,
    required String description,
    required String image,
    required String category,
  }) async {
    Future jsonData = Api(Dio()).post(
      url: "$baseUrl/products",
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
// Let's trace the flow of the code for Post:

// 1. When you call the `addProduct` method of an instance of the `AddProduct` class with the required parameters (title, price, description, image, and category), it initiates the process of adding a product.

// 2. Inside the `addProduct` method, it calls the `post` method of the `Api` class, passing the base URL concatenated with `/products` as the URL parameter, and a map containing the product data as the data parameter.

// 3. The `post` method in the `Api` class constructs a request with the provided data and sends a POST request to the specified URL using the Dio HTTP client.

// 4. If a token is provided, it adds an Authorization header with the token value to the request headers.

// 5. Upon receiving the response, it extracts the JSON data from the response and returns it as a `Map<String, dynamic>`.

// 6. The `addProduct` method in the `AddProduct` class receives this JSON data as `jsonData`.

// 7. It then converts this JSON data into a `ProductModel` object using `ProductModel.fromJson`.

// 8. Finally, the `addProduct` method returns a `Future<ProductModel>` representing the product that was added to the API.

// This flow ensures that the product data is sent to the API endpoint and that the response is processed accordingly, providing a convenient way to interact with the API for adding products from the Flutter application.
