// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class Api {
  final Dio dio;
  Api(this.dio);

  Future<dynamic> post({
    @required String? token,
    @required dynamic data,
    required String url,
  }) async {
    Map<String, dynamic> headers = {};
    if (token != null) {
      headers.addAll(
        {"Authorization": "Bearer $token"},
      );
    }
    try {
      Response response = await dio.post(
        url,
        data: data,
        options: Options(
          headers: headers,
        ),
      );
      Map<String, dynamic> jsonData = response.data;
      return jsonData;
    } catch (e) {
      throw Exception(
        "Error creating response object from $url",
      );
    }
  }

  Future<dynamic> put({
    @required String? token,
    @required dynamic data,
    required String url,
  }) async {
    Map<String, dynamic> headers = {};

    // headers.addAll({"Content-Type":"multipart/form-data; boundary=<calculated when request is sent>"});
    if (token != null) {
      headers.addAll(
        {"Authorization": "Bearer $token"},
      );
    }
    try {
      print("$url, $data, $token");

      Response response = await dio.put(
        url,
        data: data,
        options: Options(
          headers: headers,
        ),
      );

      Map<String, dynamic> jsonData = response.data;
      print(jsonData);
      return jsonData;
    } catch (e) {
      throw Exception(
        "Error creating response object from $url",
      );
    }
  }
}
